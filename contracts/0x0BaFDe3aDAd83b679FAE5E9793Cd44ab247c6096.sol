contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
address stor2;
mapping of uint256 sub_62f96998;
mapping of uint256 sub_0ecd7633;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of struct stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
uint256 sub_b8c7724a;
mapping of address stor12;
mapping of uint256 stor13;
mapping of address approved;
mapping of uint8 stor15;
mapping of uint256 sub_6b4c399a;
mapping of uint8 stor17;
mapping of uint256 stor18;
mapping of uint256 stor19;
uint256 totalSupply;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    return approved[arg1]
}

function sub_0ecd7633(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Schema ID must correspond to an existing schema.'
    if arg2 >= sub_62f96998[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: The index provided is out of bounds for the owner specified.'
    return sub_0ecd7633[arg1][arg2]
}

function totalSupply() payable {
    return totalSupply
}

function isRevoked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    return bool(stor15[arg1])
}

function sub_62f96998(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Schema ID must correspond to an existing schema.'
    return sub_62f96998[arg1]
}

function sub_6b4c399a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    return sub_6b4c399a[arg1]
}

function sub_b8c7724a(?) payable {
    return sub_b8c7724a
}

function _fallback() payable {
    revert
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SignataRight: The index provided is out of bounds.'
    if arg1 > -2:
        revert with 'NH{q', 17
    return (arg1 + 1)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(arg1) > 0:
        return stor13[address(arg1)]
    staticcall stor2.getIdentity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return stor13[ext_call.return_data[12 len 20]]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ext_code.size(arg1) > 0:
        return bool(stor17[address(arg1)][address(arg2)])
    staticcall stor2.getIdentity(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return bool(stor17[ext_call.return_data[12 len 20]][address(arg2)])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0xb992092500000000000000000000000000000000000000000000000000000000)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    if ext_code.size(stor12[arg1]) > 0:
        return stor12[arg1]
    staticcall stor2.getDelegate(address arg1) with:
            gas gas_remaining wei
           args stor12[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function minterOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Schema ID must correspond to an existing schema.'
    if ext_code.size(stor12[stor9[arg1]]) > 0:
        return stor12[stor9[arg1]]
    staticcall stor2.getDelegate(address arg1) with:
            gas gas_remaining wei
           args stor12[stor9[arg1]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_98b97790(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor9[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Schema ID must correspond to an existing schema.'
    if ext_code.size(0) > 0:
        return (stor10[address(arg1)][arg2] > 0)
    staticcall stor2.getIdentity(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return (stor10[ext_call.return_data[12 len 20]][arg2] > 0)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ext_code.size(arg1) > 0:
        if arg2 >= stor13[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SignataRight: The index provided is out of bounds for the owner specified.'
        return stor18[address(arg1)][arg2]
    staticcall stor2.getIdentity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 >= stor13[ext_call.return_data[12 len 20]]:
        revert with 0, 'SignataRight: The index provided is out of bounds for the owner specified.'
    return stor18[address(ext_call.return_data[0])][arg2]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SignataRight: Self-approval is not required.'
    if ext_code.size(msg.sender) > 0:
        stor17[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        staticcall stor2.getIdentity(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            revert with 0, 'SignataRight: Self-approval is not required.'
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The owner's account is locked.'
        stor17[address(ext_call.return_data[0])][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, address(ext_call.return_data[0]), arg1);
}

function revoke(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Right ID must correspond to an existing right.'
    if not stor5[stor16[arg1]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: The right specified is not revocable.'
    if ext_code.size(stor12[stor9[stor16[arg1]]]) > 0:
        if stor12[stor9[stor16[arg1]]] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SignataRight: The sender is not authorised to revoke the right.'
    else:
        staticcall stor2.getDelegate(address arg1) with:
                gas gas_remaining wei
               args stor12[stor9[stor16[arg1]]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args stor12[stor9[stor16[arg1]]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The minter's account is locked.'
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'SignataRight: The sender is not authorised to revoke the right.'
    stor15[arg1] = 1
    if stor10[stor12[arg1]][stor16[arg1]] < 1:
        revert with 'NH{q', 17
    stor10[stor12[arg1]][stor16[arg1]]--
    emit 0xdb43aa42: arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor12[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    if arg1 == stor12[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Approval is not required for the owner of the right.'
    if ext_code.size(stor12[arg2]) > 0:
        if stor12[arg2] != msg.sender:
            if ext_code.size(stor12[arg2]) > 0:
                if not stor17[stor12[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SignataRight: The sender is not authorised to provide approvals.'
            else:
                staticcall stor2.getIdentity(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor17[ext_call.return_data[12 len 20]][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to provide approvals.'
        approved[arg2] = arg1
        emit Approval(stor12[arg2], arg1, arg2);
    else:
        staticcall stor2.getDelegate(address arg1) with:
                gas gas_remaining wei
               args stor12[arg2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            revert with 0, 'SignataRight: Approval is not required for the owner of the right.'
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args stor12[arg2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The owner's account is locked.'
        if address(ext_call.return_data[0]) != msg.sender:
            if ext_code.size(stor12[arg2]) > 0:
                if not stor17[stor12[arg2]][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to provide approvals.'
            else:
                staticcall stor2.getIdentity(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor17[ext_call.return_data[12 len 20]][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to provide approvals.'
        approved[arg2] = arg1
        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    if stor7[stor16[arg1]].field_0:
        if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor16[arg1]].field_0:
            if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[stor16[arg1]].field_1:
                if 31 < stor7[stor16[arg1]].field_1:
                    mem[128] = stor7[stor16[arg1]].field_0
                    idx = 128
                    s = 0
                    while stor7[stor16[arg1]].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[stor16[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[stor16[arg1]].field_1), data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)])
                mem[128] = 256 * stor7[stor16[arg1]].field_8
        else:
            if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[stor16[arg1]].field_1:
                if 31 < stor7[stor16[arg1]].field_1:
                    mem[128] = stor7[stor16[arg1]].field_0
                    idx = 128
                    s = 0
                    while stor7[stor16[arg1]].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[stor16[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[stor16[arg1]].field_1), data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)])
                mem[128] = 256 * stor7[stor16[arg1]].field_8
        mem[ceil32(stor7[stor16[arg1]].field_1) + 192 len ceil32(stor7[stor16[arg1]].field_1)] = mem[128 len ceil32(stor7[stor16[arg1]].field_1)]
        if ceil32(stor7[stor16[arg1]].field_1) > stor7[stor16[arg1]].field_1:
            mem[ceil32(stor7[stor16[arg1]].field_1) + stor7[stor16[arg1]].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7[stor16[arg1]].field_1), data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)], mem[(2 * ceil32(stor7[stor16[arg1]].field_1)) + 192 len 2 * ceil32(stor7[stor16[arg1]].field_1)]), 
    if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
        revert with 'NH{q', 34
    if stor7[stor16[arg1]].field_0:
        if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor16[arg1]].field_1:
            if 31 < stor7[stor16[arg1]].field_1:
                mem[128] = stor7[stor16[arg1]].field_0
                idx = 128
                s = 0
                while stor7[stor16[arg1]].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[stor16[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[stor16[arg1]].field_0, data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)])
            mem[128] = 256 * stor7[stor16[arg1]].field_8
    else:
        if stor7[stor16[arg1]].field_0 == stor7[stor16[arg1]].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[stor16[arg1]].field_1:
            if 31 < stor7[stor16[arg1]].field_1:
                mem[128] = stor7[stor16[arg1]].field_0
                idx = 128
                s = 0
                while stor7[stor16[arg1]].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[stor16[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[stor16[arg1]].field_0, data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)])
            mem[128] = 256 * stor7[stor16[arg1]].field_8
    mem[ceil32(stor7[stor16[arg1]].field_1) + 192 len ceil32(stor7[stor16[arg1]].field_1)] = mem[128 len ceil32(stor7[stor16[arg1]].field_1)]
    if ceil32(stor7[stor16[arg1]].field_1) > stor7[stor16[arg1]].field_1:
        mem[ceil32(stor7[stor16[arg1]].field_1) + stor7[stor16[arg1]].field_1 + 192] = 0
    return Array(len=stor7[stor16[arg1]].field_0, data=mem[128 len ceil32(stor7[stor16[arg1]].field_1)], mem[(2 * ceil32(stor7[stor16[arg1]].field_1)) + 192 len 2 * ceil32(stor7[stor16[arg1]].field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor12[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Token ID must correspond to an existing right.'
    if not stor6[stor16[arg3]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SignataRight: This right is non-transferable.'
    if stor15[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SignataRight: This right has been revoked.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Transfers to the zero address are not allowed.'
    if ext_code.size(arg1) > 0:
        if stor12[arg3] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
        if arg1 != msg.sender:
            if approved[arg3] != msg.sender:
                if not stor17[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SignataRight: The sender is not authorised to transfer this right.'
        if ext_code.size(arg2) > 0:
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(arg1)] - 1:
                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(arg1)][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(arg1)][stor16[arg3]]--
            stor18[address(arg2)][stor13[address(arg2)]] = arg3
            stor19[arg3] = stor13[address(arg2)]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            stor13[address(arg1)]--
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            stor12[arg3] = arg2
            if stor10[address(arg2)][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][stor16[arg3]]++
        else:
            staticcall stor2.getIdentity(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor2.isLocked(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                revert with 0, 'SignataRight: The recipient's account is locked.'
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(arg1)] - 1:
                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(arg1)][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(arg1)][stor16[arg3]]--
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
            stor19[arg3] = stor13[address(ext_call.return_data[0])]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            stor13[address(arg1)]--
            if stor13[address(ext_call.return_data[0])] > -2:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]++
            stor12[arg3] = address(ext_call.return_data[0])
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
    else:
        staticcall stor2.getIdentity(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The owner's account is locked.'
        if stor12[arg3] != address(ext_call.return_data[0]):
            revert with 0, 'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
        if address(ext_call.return_data[0]) != msg.sender:
            if approved[arg3] != msg.sender:
                if not stor17[address(ext_call.return_data[0])][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to transfer this right.'
        if ext_code.size(arg2) > 0:
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(ext_call.return_data[0])] - 1:
                stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
            stor18[address(arg2)][stor13[address(arg2)]] = arg3
            stor19[arg3] = stor13[address(arg2)]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]--
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            stor12[arg3] = arg2
            if stor10[address(arg2)][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][stor16[arg3]]++
        else:
            staticcall stor2.getIdentity(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor2.isLocked(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                revert with 0, 'SignataRight: The recipient's account is locked.'
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(ext_call.return_data[0])] - 1:
                stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
            stor19[arg3] = stor13[address(ext_call.return_data[0])]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]--
            if stor13[address(ext_call.return_data[0])] > -2:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]++
            stor12[arg3] = address(ext_call.return_data[0])
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor12[arg3]:
        revert with 0, 'SignataRight: Token ID must correspond to an existing right.'
    if not stor6[stor16[arg3]]:
        revert with 0, 'SignataRight: This right is non-transferable.'
    if stor15[arg3]:
        revert with 0, 'SignataRight: This right has been revoked.'
    if not arg2:
        revert with 0, 'SignataRight: Transfers to the zero address are not allowed.'
    if ext_code.size(arg1) > 0:
        if stor12[arg3] != arg1:
            revert with 0, 'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
        if arg1 != msg.sender:
            if approved[arg3] != msg.sender:
                if not stor17[address(arg1)][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to transfer this right.'
        if ext_code.size(arg2) > 0:
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(arg1)] - 1:
                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(arg1)][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(arg1)][stor16[arg3]]--
            stor18[address(arg2)][stor13[address(arg2)]] = arg3
            stor19[arg3] = stor13[address(arg2)]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            stor13[address(arg1)]--
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            stor12[arg3] = arg2
            if stor10[address(arg2)][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][stor16[arg3]]++
        else:
            staticcall stor2.getIdentity(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor2.isLocked(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                revert with 0, 'SignataRight: The recipient's account is locked.'
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(arg1)] - 1:
                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(arg1)][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(arg1)][stor16[arg3]]--
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
            stor19[arg3] = stor13[address(ext_call.return_data[0])]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(arg1)] < 1:
                revert with 'NH{q', 17
            stor13[address(arg1)]--
            if stor13[address(ext_call.return_data[0])] > -2:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]++
            stor12[arg3] = address(ext_call.return_data[0])
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
    else:
        staticcall stor2.getIdentity(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The owner's account is locked.'
        if stor12[arg3] != address(ext_call.return_data[0]):
            revert with 0, 'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
        if address(ext_call.return_data[0]) != msg.sender:
            if approved[arg3] != msg.sender:
                if not stor17[address(ext_call.return_data[0])][address(msg.sender)]:
                    revert with 0, 'SignataRight: The sender is not authorised to transfer this right.'
        if ext_code.size(arg2) > 0:
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(ext_call.return_data[0])] - 1:
                stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
            stor18[address(arg2)][stor13[address(arg2)]] = arg3
            stor19[arg3] = stor13[address(arg2)]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]--
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            stor12[arg3] = arg2
            if stor10[address(arg2)][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][stor16[arg3]]++
        else:
            staticcall stor2.getIdentity(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor2.isLocked(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                revert with 0, 'SignataRight: The recipient's account is locked.'
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            if stor19[arg3] != stor13[address(ext_call.return_data[0])] - 1:
                stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
            stor19[arg3] = 0
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
            stor19[arg3] = stor13[address(ext_call.return_data[0])]
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            if stor13[address(ext_call.return_data[0])] < 1:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]--
            if stor13[address(ext_call.return_data[0])] > -2:
                revert with 'NH{q', 17
            stor13[address(ext_call.return_data[0])]++
            stor12[arg3] = address(ext_call.return_data[0])
            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                revert with 'NH{q', 17
            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
}

function sub_b4b44b41(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == bool(cd[36])
    require cd[68] == bool(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if sub_b8c7724a == -1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Maximum amount of schemas already minted.'
    if totalSupply == -1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Maximum amount of rights already minted.'
    mem[96 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[('cd', 100).length + 96] = 0
    if stor8[call.data[cd[100] + 36 len ('cd', 100).length]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: The URI provided for the schema is not unique.'
    if ext_code.size(address(cd[4])) > 0:
        if totalSupply > -2:
            revert with 'NH{q', 17
        totalSupply++
        stor12[stor20] = address(cd[4])
        sub_6b4c399a[stor20] = 1
        sub_0ecd7633[1][stor3[1]] = totalSupply
        if sub_62f96998[1] > -2:
            revert with 'NH{q', 17
        sub_62f96998[1]++
        if stor10[address(cd[4])][1] > -2:
            revert with 'NH{q', 17
        stor10[address(cd[4])][1]++
        stor18[address(cd[4])][stor13[address(cd[4])]] = totalSupply
        stor19[stor20] = stor13[address(cd[4])]
        if stor13[address(cd[4])] > -2:
            revert with 'NH{q', 17
        stor13[address(cd[4])]++
        if sub_b8c7724a > -2:
            revert with 'NH{q', 17
        sub_b8c7724a++
        stor9[stor11] = totalSupply
        if stor7[stor11].field_0:
            if stor7[stor11].field_0 == stor7[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 100).length:
                stor7[stor11].field_0 = 0
                idx = 0
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor7[stor11].field_0 = (2 * ('cd', 100).length) + 1
                s = 0
                idx = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > idx:
                    stor7[stor11][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[stor11].field_0 == stor7[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 100).length:
                stor7[stor11].field_0 = 0
                idx = 0
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor7[stor11].field_0 = (2 * ('cd', 100).length) + 1
                s = 0
                idx = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > idx:
                    stor7[stor11][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor8[call.data[cd[100] + 36 len ('cd', 100).length]] = sub_b8c7724a
        stor6[stor11] = uint8(bool(cd[36]))
        stor5[stor11] = uint8(bool(cd[68]))
        if ext_code.size(address(cd[4])) > 0:
            call address(cd[4]).0x150b7a02 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, totalSupply, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                if not return_data.size:
                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
    else:
        mem[100] = address(cd[4])
        staticcall stor2.getIdentity(address arg1) with:
                gas gas_remaining wei
               args address(cd[4])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The sender's account is locked.'
        if totalSupply > -2:
            revert with 'NH{q', 17
        totalSupply++
        stor12[stor20] = address(ext_call.return_data[0])
        sub_6b4c399a[stor20] = 1
        sub_0ecd7633[1][stor3[1]] = totalSupply
        if sub_62f96998[1] > -2:
            revert with 'NH{q', 17
        sub_62f96998[1]++
        if stor10[address(ext_call.return_data[0])][1] > -2:
            revert with 'NH{q', 17
        stor10[address(ext_call.return_data[0])][1]++
        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = totalSupply
        stor19[stor20] = stor13[address(ext_call.return_data[0])]
        if stor13[address(ext_call.return_data[0])] > -2:
            revert with 'NH{q', 17
        stor13[address(ext_call.return_data[0])]++
        if sub_b8c7724a > -2:
            revert with 'NH{q', 17
        sub_b8c7724a++
        stor9[stor11] = totalSupply
        if stor7[stor11].field_0:
            if stor7[stor11].field_0 == stor7[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 100).length:
                stor7[stor11].field_0 = 0
                idx = 0
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor7[stor11].field_0 = (2 * ('cd', 100).length) + 1
                s = 0
                idx = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > idx:
                    stor7[stor11][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[stor11].field_0 == stor7[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if not ('cd', 100).length:
                stor7[stor11].field_0 = 0
                idx = 0
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor7[stor11].field_0 = (2 * ('cd', 100).length) + 1
                s = 0
                idx = cd[100] + 36
                while cd[100] + ('cd', 100).length + 36 > idx:
                    stor7[stor11][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                while stor7[stor11].field_1 + 31 / 32 > idx:
                    stor7[stor11][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor8[call.data[cd[100] + 36 len ('cd', 100).length]] = sub_b8c7724a
        stor6[stor11] = uint8(bool(cd[36]))
        stor5[stor11] = uint8(bool(cd[68]))
        mem[(2 * ceil32(return_data.size)) + 96] = 0
        if ext_code.size(address(ext_call.return_data[0])) > 0:
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            mem[(2 * ceil32(return_data.size)) + 196] = totalSupply
            mem[(2 * ceil32(return_data.size)) + 228] = 128
            mem[(2 * ceil32(return_data.size)) + 260] = 0
            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
            call address(ext_call.return_data[0]).0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, totalSupply, 128, 0
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                if not return_data.size:
                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
    emit 0xf2cac345: 1, totalSupply, 0
    emit Transfer(0, address(cd[4]), totalSupply);
    emit 0xd32db211: sub_b8c7724a, totalSupply, sha3(call.data[cd[100] + 36 len ('cd', 100).length])
    return sub_b8c7724a
}

function sub_52090170(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if totalSupply == -1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Maximum amount of tokens already minted.'
    if not stor9[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SignataRight: Schema ID must correspond to an existing schema.'
    if ext_code.size(msg.sender) > 0:
        if stor12[stor9[arg1]] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SignataRight: The sender is not the minter for the schema specified.'
        if ext_code.size(address(arg2)) > 0:
            if totalSupply > -2:
                revert with 'NH{q', 17
            totalSupply++
            stor12[stor20] = address(arg2)
            sub_6b4c399a[stor20] = arg1
            sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
            if sub_62f96998[arg1] > -2:
                revert with 'NH{q', 17
            sub_62f96998[arg1]++
            if stor10[address(arg2)][arg1] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][arg1]++
            stor18[address(arg2)][stor13[address(arg2)]] = totalSupply
            stor19[stor20] = stor13[address(arg2)]
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            if ext_code.size(address(arg2)) > 0:
                call address(arg2).0x150b7a02 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, totalSupply, 128, 0
                if not ext_call.success:
                    if not return_data.size:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                    if not return_data.size:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
        else:
            if bool(arg3) == 1:
                if totalSupply > -2:
                    revert with 'NH{q', 17
                totalSupply++
                stor12[stor20] = address(arg2)
                sub_6b4c399a[stor20] = arg1
                sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
                if sub_62f96998[arg1] > -2:
                    revert with 'NH{q', 17
                sub_62f96998[arg1]++
                if stor10[address(arg2)][arg1] > -2:
                    revert with 'NH{q', 17
                stor10[address(arg2)][arg1]++
                stor18[address(arg2)][stor13[address(arg2)]] = totalSupply
                stor19[stor20] = stor13[address(arg2)]
                if stor13[address(arg2)] > -2:
                    revert with 'NH{q', 17
                stor13[address(arg2)]++
                if ext_code.size(address(arg2)) > 0:
                    call address(arg2).0x150b7a02 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, totalSupply, 128, 0
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                        if not return_data.size:
                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
            else:
                mem[100] = address(arg2)
                staticcall stor2.getIdentity(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 100] = msg.sender
                staticcall stor2.isLocked(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'SignataRight: The sender's account is locked.'
                if totalSupply > -2:
                    revert with 'NH{q', 17
                totalSupply++
                stor12[stor20] = address(ext_call.return_data[0])
                sub_6b4c399a[stor20] = arg1
                sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
                if sub_62f96998[arg1] > -2:
                    revert with 'NH{q', 17
                sub_62f96998[arg1]++
                if stor10[address(ext_call.return_data[0])][arg1] > -2:
                    revert with 'NH{q', 17
                stor10[address(ext_call.return_data[0])][arg1]++
                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = totalSupply
                stor19[stor20] = stor13[address(ext_call.return_data[0])]
                if stor13[address(ext_call.return_data[0])] > -2:
                    revert with 'NH{q', 17
                stor13[address(ext_call.return_data[0])]++
                mem[(2 * ceil32(return_data.size)) + 96] = 0
                if ext_code.size(address(ext_call.return_data[0])) > 0:
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 196] = totalSupply
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                    call address(ext_call.return_data[0]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalSupply, 128, 0
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        if not return_data.size:
                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
    else:
        mem[100] = msg.sender
        staticcall stor2.getIdentity(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        staticcall stor2.isLocked(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'SignataRight: The sender's account is locked.'
        if address(ext_call.return_data[0]) != stor12[stor9[arg1]]:
            revert with 0, 'SignataRight: The sender is not the minter for the schema specified.'
        if ext_code.size(address(arg2)) > 0:
            if totalSupply > -2:
                revert with 'NH{q', 17
            totalSupply++
            stor12[stor20] = address(arg2)
            sub_6b4c399a[stor20] = arg1
            sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
            if sub_62f96998[arg1] > -2:
                revert with 'NH{q', 17
            sub_62f96998[arg1]++
            if stor10[address(arg2)][arg1] > -2:
                revert with 'NH{q', 17
            stor10[address(arg2)][arg1]++
            stor18[address(arg2)][stor13[address(arg2)]] = totalSupply
            stor19[stor20] = stor13[address(arg2)]
            if stor13[address(arg2)] > -2:
                revert with 'NH{q', 17
            stor13[address(arg2)]++
            mem[(2 * ceil32(return_data.size)) + 96] = 0
            if ext_code.size(address(arg2)) > 0:
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                mem[(2 * ceil32(return_data.size)) + 196] = totalSupply
                mem[(2 * ceil32(return_data.size)) + 228] = 128
                mem[(2 * ceil32(return_data.size)) + 260] = 0
                mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                call address(arg2).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalSupply, 128, 0
                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    if not return_data.size:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
        else:
            if bool(arg3) == 1:
                if totalSupply > -2:
                    revert with 'NH{q', 17
                totalSupply++
                stor12[stor20] = address(arg2)
                sub_6b4c399a[stor20] = arg1
                sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
                if sub_62f96998[arg1] > -2:
                    revert with 'NH{q', 17
                sub_62f96998[arg1]++
                if stor10[address(arg2)][arg1] > -2:
                    revert with 'NH{q', 17
                stor10[address(arg2)][arg1]++
                stor18[address(arg2)][stor13[address(arg2)]] = totalSupply
                stor19[stor20] = stor13[address(arg2)]
                if stor13[address(arg2)] > -2:
                    revert with 'NH{q', 17
                stor13[address(arg2)]++
                mem[(2 * ceil32(return_data.size)) + 96] = 0
                if ext_code.size(address(arg2)) > 0:
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 196] = totalSupply
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                    call address(arg2).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalSupply, 128, 0
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        if not return_data.size:
                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg2)
                staticcall stor2.getIdentity(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                staticcall stor2.isLocked(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'SignataRight: The sender's account is locked.'
                if totalSupply > -2:
                    revert with 'NH{q', 17
                totalSupply++
                stor12[stor20] = address(ext_call.return_data[0])
                sub_6b4c399a[stor20] = arg1
                sub_0ecd7633[arg1][stor3[arg1]] = totalSupply
                if sub_62f96998[arg1] > -2:
                    revert with 'NH{q', 17
                sub_62f96998[arg1]++
                if stor10[address(ext_call.return_data[0])][arg1] > -2:
                    revert with 'NH{q', 17
                stor10[address(ext_call.return_data[0])][arg1]++
                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = totalSupply
                stor19[stor20] = stor13[address(ext_call.return_data[0])]
                if stor13[address(ext_call.return_data[0])] > -2:
                    revert with 'NH{q', 17
                stor13[address(ext_call.return_data[0])]++
                mem[(6 * ceil32(return_data.size)) + 96] = 0
                if ext_code.size(address(ext_call.return_data[0])) > 0:
                    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 164] = 0
                    mem[(6 * ceil32(return_data.size)) + 196] = totalSupply
                    mem[(6 * ceil32(return_data.size)) + 228] = 128
                    mem[(6 * ceil32(return_data.size)) + 260] = 0
                    mem[(6 * ceil32(return_data.size)) + 292 len 0] = None
                    call address(ext_call.return_data[0]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalSupply, 128, 0
                    mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        if not return_data.size:
                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
    emit 0xf2cac345: arg1, totalSupply, bool(arg3)
    emit Transfer(0, address(arg2), totalSupply);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor12[arg3]:
        revert with 0, 'SignataRight: Token ID must correspond to an existing right.'
    else:
        if not stor6[stor16[arg3]]:
            revert with 0, 'SignataRight: This right is non-transferable.'
        else:
            if stor15[arg3]:
                revert with 0, 'SignataRight: This right has been revoked.'
            else:
                if not arg2:
                    revert with 0, 'SignataRight: Transfers to the zero address are not allowed.'
                else:
                    if ext_code.size(arg1) <= 0:
                        staticcall stor2.getIdentity(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            staticcall stor2.isLocked(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    revert with 0, 'SignataRight: The owner's account is locked.'
                                else:
                                    if stor12[arg3] != address(ext_call.return_data[0]):
                                        revert with 0, 'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            if ext_code.size(arg2) <= 0:
                                                staticcall stor2.getIdentity(address arg1) with:
                                                        gas gas_remaining wei
                                                       args arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall stor2.isLocked(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if ext_call.return_data[0]:
                                                            revert with 0, 'SignataRight: The recipient's account is locked.'
                                                        else:
                                                            if stor13[address(ext_call.return_data[0])] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                                    stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                    stor19[arg3] = 0
                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                        stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                        approved[arg3] = 0
                                                                        emit Approval(arg1, 0, arg3);
                                                                        if stor13[address(ext_call.return_data[0])] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(ext_call.return_data[0])]--
                                                                            if stor13[address(ext_call.return_data[0])] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor13[address(ext_call.return_data[0])]++
                                                                                stor12[arg3] = address(ext_call.return_data[0])
                                                                                if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, 128, 0
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                                                else:
                                                                    stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                                    stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                                    stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                    stor19[arg3] = 0
                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                        stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                        approved[arg3] = 0
                                                                        emit Approval(arg1, 0, arg3);
                                                                        if stor13[address(ext_call.return_data[0])] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(ext_call.return_data[0])]--
                                                                            if stor13[address(ext_call.return_data[0])] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor13[address(ext_call.return_data[0])]++
                                                                                stor12[arg3] = address(ext_call.return_data[0])
                                                                                if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, 128, 0
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                            else:
                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                        stor19[arg3] = 0
                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                            stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                            stor19[arg3] = stor13[address(arg2)]
                                                            approved[arg3] = 0
                                                            emit Approval(arg1, 0, arg3);
                                                            if stor13[address(ext_call.return_data[0])] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(ext_call.return_data[0])]--
                                                                if stor13[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(arg2)]++
                                                                    stor12[arg3] = arg2
                                                                    if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(arg2)][stor16[arg3]]++
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                                    else:
                                                        stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                        stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                        stor19[arg3] = 0
                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                            stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                            stor19[arg3] = stor13[address(arg2)]
                                                            approved[arg3] = 0
                                                            emit Approval(arg1, 0, arg3);
                                                            if stor13[address(ext_call.return_data[0])] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(ext_call.return_data[0])]--
                                                                if stor13[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(arg2)]++
                                                                    stor12[arg3] = arg2
                                                                    if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(arg2)][stor16[arg3]]++
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                        else:
                                            if msg.sender == approved[arg3]:
                                                if ext_code.size(arg2) <= 0:
                                                    staticcall stor2.getIdentity(address arg1) with:
                                                            gas gas_remaining wei
                                                           args arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall stor2.isLocked(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if ext_call.return_data[0]:
                                                                revert with 0, 'SignataRight: The recipient's account is locked.'
                                                            else:
                                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                        stor19[arg3] = 0
                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                            stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                            approved[arg3] = 0
                                                                            emit Approval(arg1, 0, arg3);
                                                                            if stor13[address(ext_call.return_data[0])] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor13[address(ext_call.return_data[0])]--
                                                                                if stor13[address(ext_call.return_data[0])] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor13[address(ext_call.return_data[0])]++
                                                                                    stor12[arg3] = address(ext_call.return_data[0])
                                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                else:
                                                                    else:
                                                                        stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                                        stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                                        stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                        stor19[arg3] = 0
                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                            stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                            approved[arg3] = 0
                                                                            emit Approval(arg1, 0, arg3);
                                                                            if stor13[address(ext_call.return_data[0])] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor13[address(ext_call.return_data[0])]--
                                                                                if stor13[address(ext_call.return_data[0])] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor13[address(ext_call.return_data[0])]++
                                                                                    stor12[arg3] = address(ext_call.return_data[0])
                                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                else:
                                                else:
                                                    if stor13[address(ext_call.return_data[0])] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                            stor19[arg3] = 0
                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                                stor19[arg3] = stor13[address(arg2)]
                                                                approved[arg3] = 0
                                                                emit Approval(arg1, 0, arg3);
                                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(ext_call.return_data[0])]--
                                                                    if stor13[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(arg2)]++
                                                                        stor12[arg3] = arg2
                                                                        if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(arg2)][stor16[arg3]]++
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                        else:
                                                            stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                            stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                            stor19[arg3] = 0
                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                                stor19[arg3] = stor13[address(arg2)]
                                                                approved[arg3] = 0
                                                                emit Approval(arg1, 0, arg3);
                                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(ext_call.return_data[0])]--
                                                                    if stor13[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(arg2)]++
                                                                        stor12[arg3] = arg2
                                                                        if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(arg2)][stor16[arg3]]++
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                            else:
                                                if not stor17[address(ext_call.return_data[0])][address(msg.sender)]:
                                                    revert with 0, 'SignataRight: The sender is not authorised to transfer this right.'
                                                else:
                                                    if ext_code.size(arg2) <= 0:
                                                        staticcall stor2.getIdentity(address arg1) with:
                                                                gas gas_remaining wei
                                                               args arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall stor2.isLocked(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if ext_call.return_data[0]:
                                                                    revert with 0, 'SignataRight: The recipient's account is locked.'
                                                                else:
                                                                    if stor13[address(ext_call.return_data[0])] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                            stor19[arg3] = 0
                                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                                stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                                approved[arg3] = 0
                                                                                emit Approval(arg1, 0, arg3);
                                                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor13[address(ext_call.return_data[0])]--
                                                                                    if stor13[address(ext_call.return_data[0])] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        stor13[address(ext_call.return_data[0])]++
                                                                                        stor12[arg3] = address(ext_call.return_data[0])
                                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                    else:
                                                                        else:
                                                                            stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                                            stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                            stor19[arg3] = 0
                                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                                stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                                approved[arg3] = 0
                                                                                emit Approval(arg1, 0, arg3);
                                                                                if stor13[address(ext_call.return_data[0])] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    stor13[address(ext_call.return_data[0])]--
                                                                                    if stor13[address(ext_call.return_data[0])] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        stor13[address(ext_call.return_data[0])]++
                                                                                        stor12[arg3] = address(ext_call.return_data[0])
                                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                                    else:
                                                    else:
                                                        if stor13[address(ext_call.return_data[0])] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if stor19[arg3] == stor13[address(ext_call.return_data[0])] - 1:
                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                stor19[arg3] = 0
                                                                if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                    stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                                    stor19[arg3] = stor13[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    emit Approval(arg1, 0, arg3);
                                                                    if stor13[address(ext_call.return_data[0])] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(ext_call.return_data[0])]--
                                                                        if stor13[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(arg2)]++
                                                                            stor12[arg3] = arg2
                                                                            if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(arg2)][stor16[arg3]]++
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                            else:
                                                                stor18[address(ext_call.return_data[0])][stor19[arg3]] = stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]
                                                                stor19[stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1]] = stor19[arg3]
                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])] - 1] = 0
                                                                stor19[arg3] = 0
                                                                if stor10[address(ext_call.return_data[0])][stor16[arg3]] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(ext_call.return_data[0])][stor16[arg3]]--
                                                                    stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                                    stor19[arg3] = stor13[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    emit Approval(arg1, 0, arg3);
                                                                    if stor13[address(ext_call.return_data[0])] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(ext_call.return_data[0])]--
                                                                        if stor13[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(arg2)]++
                                                                            stor12[arg3] = arg2
                                                                            if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(arg2)][stor16[arg3]]++
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                    else:
                        if stor12[arg3] != arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'SignataRight: The account specified does not hold the right corresponding to the Token ID provided.'
                        else:
                            if msg.sender == arg1:
                                if ext_code.size(arg2) <= 0:
                                    staticcall stor2.getIdentity(address arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        staticcall stor2.isLocked(address arg1) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                revert with 0, 'SignataRight: The recipient's account is locked.'
                                            else:
                                                if stor13[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if stor19[arg3] == stor13[address(arg1)] - 1:
                                                        stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                        stor19[arg3] = 0
                                                        if stor10[address(arg1)][stor16[arg3]] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(arg1)][stor16[arg3]]--
                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                            stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                            approved[arg3] = 0
                                                            emit Approval(arg1, 0, arg3);
                                                            if stor13[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(arg1)]--
                                                                if stor13[address(ext_call.return_data[0])] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(ext_call.return_data[0])]++
                                                                    stor12[arg3] = address(ext_call.return_data[0])
                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                                    else:
                                                        stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                                        stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                                        stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                        stor19[arg3] = 0
                                                        if stor10[address(arg1)][stor16[arg3]] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(arg1)][stor16[arg3]]--
                                                            stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                            stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                            approved[arg3] = 0
                                                            emit Approval(arg1, 0, arg3);
                                                            if stor13[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(arg1)]--
                                                                if stor13[address(ext_call.return_data[0])] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(ext_call.return_data[0])]++
                                                                    stor12[arg3] = address(ext_call.return_data[0])
                                                                    if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                else:
                                    if stor13[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if stor19[arg3] == stor13[address(arg1)] - 1:
                                            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                            stor19[arg3] = 0
                                            if stor10[address(arg1)][stor16[arg3]] < 1:
                                                revert with 'NH{q', 17
                                            else:
                                                stor10[address(arg1)][stor16[arg3]]--
                                                stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                stor19[arg3] = stor13[address(arg2)]
                                                approved[arg3] = 0
                                                emit Approval(arg1, 0, arg3);
                                                if stor13[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    stor13[address(arg1)]--
                                                    if stor13[address(arg2)] > -2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor13[address(arg2)]++
                                                        stor12[arg3] = arg2
                                                        if stor10[address(arg2)][stor16[arg3]] > -2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(arg2)][stor16[arg3]]++
                                                            emit Transfer(arg1, arg2, arg3);
                                                            if ext_code.size(arg2) <= 0:
                                                            else:
                                                                call arg2.0x150b7a02 with:
                                                                     gas gas_remaining wei
                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                if not ext_call.success:
                                                                    if not return_data.size:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                    else:
                                                                        if not return_data.size:
                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                    else:
                                        else:
                                            stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                            stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                            stor19[arg3] = 0
                                            if stor10[address(arg1)][stor16[arg3]] < 1:
                                                revert with 'NH{q', 17
                                            else:
                                                stor10[address(arg1)][stor16[arg3]]--
                                                stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                stor19[arg3] = stor13[address(arg2)]
                                                approved[arg3] = 0
                                                emit Approval(arg1, 0, arg3);
                                                if stor13[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    stor13[address(arg1)]--
                                                    if stor13[address(arg2)] > -2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor13[address(arg2)]++
                                                        stor12[arg3] = arg2
                                                        if stor10[address(arg2)][stor16[arg3]] > -2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor10[address(arg2)][stor16[arg3]]++
                                                            emit Transfer(arg1, arg2, arg3);
                                                            if ext_code.size(arg2) <= 0:
                                                            else:
                                                                call arg2.0x150b7a02 with:
                                                                     gas gas_remaining wei
                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                if not ext_call.success:
                                                                    if not return_data.size:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                    else:
                                                                        if not return_data.size:
                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                    else:
                            else:
                                if msg.sender == approved[arg3]:
                                    if ext_code.size(arg2) <= 0:
                                        staticcall stor2.getIdentity(address arg1) with:
                                                gas gas_remaining wei
                                               args arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            staticcall stor2.isLocked(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0]:
                                                    revert with 0, 'SignataRight: The recipient's account is locked.'
                                                else:
                                                    if stor13[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if stor19[arg3] == stor13[address(arg1)] - 1:
                                                            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                            stor19[arg3] = 0
                                                            if stor10[address(arg1)][stor16[arg3]] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(arg1)][stor16[arg3]]--
                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                approved[arg3] = 0
                                                                emit Approval(arg1, 0, arg3);
                                                                if stor13[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(arg1)]--
                                                                    if stor13[address(ext_call.return_data[0])] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(ext_call.return_data[0])]++
                                                                        stor12[arg3] = address(ext_call.return_data[0])
                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                                        else:
                                                            stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                                            stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                                            stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                            stor19[arg3] = 0
                                                            if stor10[address(arg1)][stor16[arg3]] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(arg1)][stor16[arg3]]--
                                                                stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                approved[arg3] = 0
                                                                emit Approval(arg1, 0, arg3);
                                                                if stor13[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor13[address(arg1)]--
                                                                    if stor13[address(ext_call.return_data[0])] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(ext_call.return_data[0])]++
                                                                        stor12[arg3] = address(ext_call.return_data[0])
                                                                        if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                    else:
                                    else:
                                        if stor13[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if stor19[arg3] == stor13[address(arg1)] - 1:
                                                stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                stor19[arg3] = 0
                                                if stor10[address(arg1)][stor16[arg3]] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    stor10[address(arg1)][stor16[arg3]]--
                                                    stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                    stor19[arg3] = stor13[address(arg2)]
                                                    approved[arg3] = 0
                                                    emit Approval(arg1, 0, arg3);
                                                    if stor13[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor13[address(arg1)]--
                                                        if stor13[address(arg2)] > -2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor13[address(arg2)]++
                                                            stor12[arg3] = arg2
                                                            if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(arg2)][stor16[arg3]]++
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    call arg2.0x150b7a02 with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                            else:
                                                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                                stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                stor19[arg3] = 0
                                                if stor10[address(arg1)][stor16[arg3]] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    stor10[address(arg1)][stor16[arg3]]--
                                                    stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                    stor19[arg3] = stor13[address(arg2)]
                                                    approved[arg3] = 0
                                                    emit Approval(arg1, 0, arg3);
                                                    if stor13[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor13[address(arg1)]--
                                                        if stor13[address(arg2)] > -2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor13[address(arg2)]++
                                                            stor12[arg3] = arg2
                                                            if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor10[address(arg2)][stor16[arg3]]++
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    call arg2.0x150b7a02 with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                        else:
                                else:
                                    if not stor17[address(arg1)][address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'SignataRight: The sender is not authorised to transfer this right.'
                                    else:
                                        if ext_code.size(arg2) <= 0:
                                            staticcall stor2.getIdentity(address arg1) with:
                                                    gas gas_remaining wei
                                                   args arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                staticcall stor2.isLocked(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if ext_call.return_data[0]:
                                                        revert with 0, 'SignataRight: The recipient's account is locked.'
                                                    else:
                                                        if stor13[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if stor19[arg3] == stor13[address(arg1)] - 1:
                                                                stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                                stor19[arg3] = 0
                                                                if stor10[address(arg1)][stor16[arg3]] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(arg1)][stor16[arg3]]--
                                                                    stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                    stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                    approved[arg3] = 0
                                                                    emit Approval(arg1, 0, arg3);
                                                                    if stor13[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(arg1)]--
                                                                        if stor13[address(ext_call.return_data[0])] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(ext_call.return_data[0])]++
                                                                            stor12[arg3] = address(ext_call.return_data[0])
                                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                                            else:
                                                                stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                                                stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                                                stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                                stor19[arg3] = 0
                                                                if stor10[address(arg1)][stor16[arg3]] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(arg1)][stor16[arg3]]--
                                                                    stor18[address(ext_call.return_data[0])][stor13[address(ext_call.return_data[0])]] = arg3
                                                                    stor19[arg3] = stor13[address(ext_call.return_data[0])]
                                                                    approved[arg3] = 0
                                                                    emit Approval(arg1, 0, arg3);
                                                                    if stor13[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        stor13[address(arg1)]--
                                                                        if stor13[address(ext_call.return_data[0])] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            stor13[address(ext_call.return_data[0])]++
                                                                            stor12[arg3] = address(ext_call.return_data[0])
                                                                            if stor10[address(ext_call.return_data[0])][stor16[arg3]] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                stor10[address(ext_call.return_data[0])][stor16[arg3]]++
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contra', 'ct.'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                        else:
                                        else:
                                            if stor13[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if stor19[arg3] == stor13[address(arg1)] - 1:
                                                    stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                    stor19[arg3] = 0
                                                    if stor10[address(arg1)][stor16[arg3]] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor10[address(arg1)][stor16[arg3]]--
                                                        stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                        stor19[arg3] = stor13[address(arg2)]
                                                        approved[arg3] = 0
                                                        emit Approval(arg1, 0, arg3);
                                                        if stor13[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor13[address(arg1)]--
                                                            if stor13[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(arg2)]++
                                                                stor12[arg3] = arg2
                                                                if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(arg2)][stor16[arg3]]++
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
                                                else:
                                                    stor18[address(arg1)][stor19[arg3]] = stor18[address(arg1)][stor13[address(arg1)] - 1]
                                                    stor19[stor18[address(arg1)][stor13[address(arg1)] - 1]] = stor19[arg3]
                                                    stor18[address(arg1)][stor13[address(arg1)] - 1] = 0
                                                    stor19[arg3] = 0
                                                    if stor10[address(arg1)][stor16[arg3]] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        stor10[address(arg1)][stor16[arg3]]--
                                                        stor18[address(arg2)][stor13[address(arg2)]] = arg3
                                                        stor19[arg3] = stor13[address(arg2)]
                                                        approved[arg3] = 0
                                                        emit Approval(arg1, 0, arg3);
                                                        if stor13[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor13[address(arg1)]--
                                                            if stor13[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor13[address(arg2)]++
                                                                stor12[arg3] = arg2
                                                                if stor10[address(arg2)][stor16[arg3]] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor10[address(arg2)][stor16[arg3]]++
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'SignataRight: must only transfer to ERC721Receiver implementers when recipient is a smart contract.'
                                                                            else:
}



}
