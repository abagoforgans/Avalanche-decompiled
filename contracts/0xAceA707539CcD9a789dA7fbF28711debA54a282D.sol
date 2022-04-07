contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct manager;
mapping of uint256 stor3;

function sub_103b7397(?) payable {
    return manager.length
}

function owner() payable {
    return owner
}

function getManager(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    return manager[arg1].field_0, bool(manager[arg1].field_160)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_86385a62(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeManager(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > manager.length:
        revert with 0, 'Invalid Manager ID!'
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    if not manager[arg1].field_160:
        revert with 0, 'Manager Already Removed!'
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    manager[arg1].field_160 = 0
    emit 0x15dcffb8: manager[arg1].field_0, 0
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)] <= 0:
        manager.length++
        manager[manager.length].field_0 = arg1
        manager[manager.length].field_160 = 1
        stor3[address(arg1)] = manager.length
        emit 0x4b7ea39f: arg1 << 192, 1
    else:
        if stor3[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor3[address(arg1)] - 1 >= manager.length:
            revert with 'NH{q', 50
        if manager[stor3[address(arg1)]].field_0:
            revert with 0, 'Manager Already Added!'
        if stor3[address(arg1)] - 1 >= manager.length:
            revert with 'NH{q', 50
        manager[stor3[address(arg1)]].field_0 = arg1
        emit 0x6abf87cf: manager[stor3[address(arg1)]].field_0, 0
}

function sub_5212acb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    mem[0] = 2
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0xd1af0c7d with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0x61d027b3 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 0xf525cb6800000000000000000000000000000000000000000000000000000000
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.mem[var256003 len 4] with:
            gas gas_remaining wei
           args mem[var256003 + 4 len var256004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var260002 - var260001 >= 32
    require var270002 == var270001
    if var278002 >= var278001:
        return var278005, ext_call.return_data[0]
    # nil
}

function sub_ffd44ad1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    mem[0] = 2
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0xd1af0c7d with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0x61d027b3 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 0xf525cb6800000000000000000000000000000000000000000000000000000000
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.mem[var257003 len 4] with:
            gas gas_remaining wei
           args mem[var257003 + 4 len var257004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var261002 - var261001 >= 32
    require var271002 == var271001
    if var279002 >= var279001:
        return (var279005 > ext_call.return_data[0])
    # nil
}

function mintRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > manager.length:
        revert with 0, 'Invalid Manager ID!'
    if arg1 >= manager.length:
        revert with 'NH{q', 50
    mem[0] = 2
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0xd1af0c7d with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.0x61d027b3 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 0xf525cb6800000000000000000000000000000000000000000000000000000000
    require ext_code.size(manager[arg1].field_0)
    staticcall manager[arg1].field_0.mem[var263003 len 4] with:
            gas gas_remaining wei
           args mem[var263003 + 4 len var263004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var267002 - var267001 >= 32
    require var277002 == var277001
    if var285002 < var285001:
        # nil
    else:
        if var285005 <= ext_call.return_data[0]:
            revert with 0, 'Enough Tokens!'
        if arg1 >= manager.length:
            revert with 'NH{q', 50
        require ext_code.size(manager[arg1].field_0)
        staticcall manager[arg1].field_0.0xd1af0c7d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(manager[arg1].field_0)
        staticcall manager[arg1].field_0.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if var285005 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), var285005 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= manager.length:
            revert with 'NH{q', 50
        emit 0x20bb4aab: manager[arg1].field_0, 0
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
