contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
address bankAddress;
address sub_5997af12Address;
address factoryAddress;

function governor() payable {
    return address(governorAddress)
}

function sub_5997af12(?) payable {
    return sub_5997af12Address
}

function bank() payable {
    return bankAddress
}

function factory() payable {
    return factoryAddress
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function setBank(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    bankAddress = arg1
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

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    require arg4.length >= 64
    revert with 0, 'haha'
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
    _71 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + (32 * mem[uint32(arg1), mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _9) + ceil32(return_data.size) + 128] = mem[uint32(arg1), mem[132 len 28] + 96]
    _75 = mem[_71 + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 160 len floor32(mem[_71 + 96])] = mem[_71 + 128 len floor32(mem[_71 + 96])]
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
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, this.address, 128, 64, 1, 1
    else:
        if arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / mem[(32 * _9) + ceil32(return_data.size) + 160] != arg2:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[(32 * _75) + (32 * _9) + ceil32(return_data.size) + 288 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] != mem[ceil32(return_data.size) + 140 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, this.address, 128, 64, 1, 1
        else:
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, 0, this.address, 128, 64, 1, 1
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
        _79 = mem[(32 * idx) + 128]
        if address(governorAddress) != msg.sender:
            revert with 0, 'not the governor'
        mem[mem[64]] = 0x6d6af33400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _79
        require ext_code.size(bankAddress)
        staticcall bankAddress.getPositionDebts(uint256 rg1) with:
                gas gas_remaining wei
               args _79
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _85 = mem[_84]
        require mem[_84] <= 4294967296
        require mem[_84] + 32 <= return_data.size
        require mem[_84 + mem[_84]] <= 4294967296 and mem[_84] + (32 * mem[_84 + mem[_84]]) + 32 <= return_data.size
        mem[_84 + ceil32(return_data.size)] = mem[_84 + mem[_84]]
        _88 = mem[_84 + _85]
        s = 0
        while s < 32 * _88:
            mem[s + _84 + ceil32(return_data.size) + 32] = mem[s + _84 + _85 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _88) + _84 + ceil32(return_data.size) + 32
        _150 = mem[_84 + 32]
        require mem[_84 + 32] <= 4294967296
        require mem[_84 + 32] + 32 <= return_data.size
        require mem[_84 + mem[_84 + 32]] <= 4294967296 and mem[_84 + 32] + (32 * mem[_84 + mem[_84 + 32]]) + 32 <= return_data.size
        mem[(32 * _88) + _84 + ceil32(return_data.size) + 32] = mem[_84 + mem[_84 + 32]]
        _154 = mem[_84 + _150]
        s = 0
        while s < 32 * _154:
            mem[s + (32 * _88) + _84 + ceil32(return_data.size) + 64] = mem[s + _84 + _150 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 64
        require 0 < mem[_84 + ceil32(return_data.size)]
        require 0 < mem[(32 * _88) + _84 + ceil32(return_data.size) + 32]
        _215 = mem[(32 * _88) + _84 + ceil32(return_data.size) + 64]
        require ext_code.size(bankAddress)
        staticcall bankAddress.getPositionInfo(uint256 rg1) with:
                gas gas_remaining wei
               args _79
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
        if not mem[(32 * _88) + _84 + ceil32(return_data.size) + 64]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 96] = 1
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 128] = 1
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 64] = 64
            mem[64] = (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 160
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 164] = 0
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 196] = 0
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 228] = this.address
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 260] = 128
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 292] = 64
            s = 0
            while s < 64:
                mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324] = mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, this.address, 128, 64, mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if arg2 * mem[(32 * _88) + _84 + ceil32(return_data.size) + 64] / mem[(32 * _88) + _84 + ceil32(return_data.size) + 64] != arg2:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 192 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 96] = 1
        mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 128] = 1
        mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 64] = 64
        mem[64] = (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 160
        mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] != mem[_84 + ceil32(return_data.size) + 44 len 20]:
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 164] = 0
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 196] = arg2 * _215 / 10000
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 228] = this.address
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 260] = 128
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 292] = 64
            s = 0
            while s < 64:
                mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324] = mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg2 * _215 / 10000, this.address, 128, 64, mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324 len 64]
        else:
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 164] = arg2 * _215 / 10000
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 196] = 0
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 228] = this.address
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 260] = 128
            mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 292] = 64
            s = 0
            while s < 64:
                mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324] = mem[s + (32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg2 * _215 / 10000, 0, this.address, 128, 64, mem[(32 * _154) + (32 * _88) + _84 + ceil32(return_data.size) + 324 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 65
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



}
