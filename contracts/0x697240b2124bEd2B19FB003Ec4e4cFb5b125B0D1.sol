contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address synthereumFinderAddress;

function synthereumFinder() payable {
    return synthereumFinderAddress
}

function _fallback() payable {
    revert
}

function createToken(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    mem[100] = 'FactoryVersioning' << 120
    require ext_code.size(synthereumFinderAddress)
    staticcall synthereumFinderAddress.0xaafd5e40 with:
            gas gas_remaining wei
           args ('FactoryVersioning' << 120)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = 'PoolFactory' << 168
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xda4e4346 with:
            gas gas_remaining wei
           args ('PoolFactory' << 168)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 100] = 'FixedRateFactory' << 128
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xda4e4346 with:
            gas gas_remaining wei
           args ('FixedRateFactory' << 128)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    s = 0
    idx = 0
    while uint8(idx) < uint8(ext_call.return_data[0]):
        mem[mem[64] + 4] = 'PoolFactory' << 168
        mem[mem[64] + 36] = uint8(s)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd0733002 with:
                gas gas_remaining wei
               args 'PoolFactory', uint8(s)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            idx = idx
            continue 
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 12 len 20] != msg.sender:
            if uint8(idx) == 255:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            idx = uint8(idx) + 1
            continue 
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        mem[arg1.length + mem[64] + 10647] = 0
        mem[mem[64] + ceil32(arg1.length) + 10647] = arg2.length
        mem[mem[64] + ceil32(arg1.length) + 10679 len arg2.length] = arg2[all]
        mem[arg2.length + mem[64] + ceil32(arg1.length) + 10679] = 0
        create contract with 0 wei
                        code: code.data[2060 len 10519], 96, ceil32(arg1.length) + 128, arg3, arg1.length, arg1[all], 0, mem[mem[64] + arg1.length + 10679 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).addAdmin(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).renounceAdmin() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 1
        return address(create.new_address)
    s = 0
    idx = 0
    while uint8(idx) < uint8(ext_call.return_data[0]):
        mem[mem[64] + 4] = 'FixedRateFactory' << 128
        mem[mem[64] + 36] = uint8(s)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd0733002 with:
                gas gas_remaining wei
               args 'FixedRateFactory', uint8(s)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            idx = idx
            continue 
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == mem[_76 + 12 len 20]
        if mem[_76 + 12 len 20] != msg.sender:
            if uint8(idx) == 255:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            idx = uint8(idx) + 1
            continue 
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        mem[arg1.length + mem[64] + 10647] = 0
        mem[mem[64] + ceil32(arg1.length) + 10647] = arg2.length
        mem[mem[64] + ceil32(arg1.length) + 10679 len arg2.length] = arg2[all]
        mem[arg2.length + mem[64] + ceil32(arg1.length) + 10679] = 0
        create contract with 0 wei
                        code: code.data[2060 len 10519], 96, ceil32(arg1.length) + 128, arg3, arg1.length, arg1[all], 0, mem[mem[64] + arg1.length + 10679 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).addAdmin(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).renounceAdmin() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 1
        return address(create.new_address)
    revert with 0, 'Sender must be a Pool or FixedRate factory'
}



}
