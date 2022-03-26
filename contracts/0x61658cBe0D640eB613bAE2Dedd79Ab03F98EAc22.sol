contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function detonate() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[21938 len 32]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[21938 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[21938 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[21900 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function init(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[21938 len 32]
    create contract with 0 wei
                    code: code.data[3303 len 5857], address(this.address), 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len 12740] = code.data[9160 len 12740]
    mem[12836] = address(create.new_address)
    mem[12868] = arg1
    mem[12900] = this.address
    create contract with 0 wei
                    code: code.data[9160 len 12740], address(create.new_address), address(arg1), this.address
    mem[128] = arg3
    mem[96] = 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).queueTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
         gas gas_remaining wei
        args address(create.new_address), 0, 160, 224, block.timestamp, 17, 'setDelay(uint256)', 32, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = address(create.new_address)
    mem[160] = 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).queueTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
         gas gas_remaining wei
        args address(create.new_address), 0, 160, 224, block.timestamp, 24, 'setPendingAdmin(address)', 32, address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = arg3
    mem[224] = 32
    mem[288] = 0x825f38f00000000000000000000000000000000000000000000000000000000
    mem[292] = address(create.new_address)
    mem[324] = 0
    mem[420] = block.timestamp
    mem[356] = 160
    mem[452] = 17
    mem[484] = 'setDelay(uint256)' << 120
    mem[388] = 224
    mem[516] = 32
    mem[548] = arg3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
         gas gas_remaining wei
        args address(create.new_address), 0, 160, 224, block.timestamp, 17, 'setDelay(uint256)', 32, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _4154 = mem[288 len 4], address(create.new_address) << 64
    require mem[288 len 4], address(create.new_address) << 64 <= 4294967296
    require mem[288 len 4], address(create.new_address) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[288 len 4], address(create.new_address) << 64 + 288] + mem[288 len 4], address(create.new_address) << 64 + 32 and mem[mem[288 len 4], address(create.new_address) << 64 + 288] <= 4294967296
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], address(create.new_address) << 64 + 288]
    _4178 = mem[_4154 + 288]
    mem[ceil32(return_data.size) + 320 len ceil32(mem[_4154 + 288])] = mem[_4154 + 320 len ceil32(mem[_4154 + 288])]
    if not _4178 % 32:
        mem[_4178 + ceil32(return_data.size) + 352] = address(create.new_address)
        mem[_4178 + ceil32(return_data.size) + 384] = 0x825f38f00000000000000000000000000000000000000000000000000000000
        mem[_4178 + ceil32(return_data.size) + 388] = address(create.new_address)
        mem[_4178 + ceil32(return_data.size) + 420] = 0
        mem[_4178 + ceil32(return_data.size) + 516] = block.timestamp
        mem[_4178 + ceil32(return_data.size) + 452] = 160
        mem[_4178 + ceil32(return_data.size) + 548] = 24
        mem[_4178 + ceil32(return_data.size) + 580] = 'setPendingAdmin(address)' << 64
        mem[_4178 + ceil32(return_data.size) + 484] = 224
        mem[_4178 + ceil32(return_data.size) + 612] = 32
        mem[_4178 + ceil32(return_data.size) + 644] = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(create.new_address), 0, 160, 224, block.timestamp, 24, 'setPendingAdmin(address)', 32, address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_4178 + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _4178 + (2 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _6830 = mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64
        require mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 <= 4294967296
        require mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 + 32 <= return_data.size
        require return_data.size >= mem[_4178 + ceil32(return_data.size) + mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 + 384] + mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 + 32 and mem[_4178 + ceil32(return_data.size) + mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 + 384] <= 4294967296
        mem[_4178 + (2 * ceil32(return_data.size)) + 384] = mem[_4178 + ceil32(return_data.size) + mem[_4178 + ceil32(return_data.size) + 384 len 4], address(create.new_address) << 64 + 384]
    else:
        mem[floor32(_4178) + ceil32(return_data.size) + 384] = address(create.new_address)
        mem[floor32(_4178) + ceil32(return_data.size) + 416] = 0x825f38f00000000000000000000000000000000000000000000000000000000
        mem[floor32(_4178) + ceil32(return_data.size) + 420] = address(create.new_address)
        mem[floor32(_4178) + ceil32(return_data.size) + 452] = 0
        mem[floor32(_4178) + ceil32(return_data.size) + 548] = block.timestamp
        mem[floor32(_4178) + ceil32(return_data.size) + 484] = 160
        mem[floor32(_4178) + ceil32(return_data.size) + 580] = 24
        mem[floor32(_4178) + ceil32(return_data.size) + 612] = 'setPendingAdmin(address)' << 64
        mem[floor32(_4178) + ceil32(return_data.size) + 516] = 224
        mem[floor32(_4178) + ceil32(return_data.size) + 644] = 32
        mem[floor32(_4178) + ceil32(return_data.size) + 676] = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
             gas gas_remaining wei
            args address(create.new_address), 0, 160, 224, block.timestamp, 24, 'setPendingAdmin(address)', 32, address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_4178) + ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_4178) + (2 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _6833 = mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64
        require mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 <= 4294967296
        require mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 + 32 <= return_data.size
        require return_data.size >= mem[floor32(_4178) + ceil32(return_data.size) + mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 + 416] + mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 + 32 and mem[floor32(_4178) + ceil32(return_data.size) + mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 + 416] <= 4294967296
        mem[floor32(_4178) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_4178) + ceil32(return_data.size) + mem[floor32(_4178) + ceil32(return_data.size) + 416 len 4], address(create.new_address) << 64 + 416]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).__acceptAdmin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).__transferGuardian(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).admin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == address(create.new_address)
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).delay() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == arg3
    return address(create.new_address), address(create.new_address)
}



}
