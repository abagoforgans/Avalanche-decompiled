contract main {




// =====================  Runtime code  =====================


#
#  - setDNSRecords(bytes32 arg1, bytes arg2)
#  - setText(bytes32 arg1, string arg2, string arg3)
#
mapping of struct stor0;
mapping of struct stor1;
mapping of struct stor2;
mapping of struct stor3;
mapping of uint256 stor4;
mapping of struct stor5;
mapping of uint16 stor6;
mapping of address stor7;
mapping of struct stor8;
mapping of struct pubkey;
mapping of struct stor10;
address stor11;
address stor12;
mapping of uint8 stor13;

function hasDNSRecords(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor6[arg1][stor4[arg1]][arg2])
}

function pubkey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return pubkey[arg1].field_0, pubkey[arg1].field_256
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor13[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor13[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function clearDNSZone(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    if stor4[arg1] == -1:
        revert with 'NH{q', 17
    stor4[arg1]++
    emit DNSZoneCleared(arg1);
}

function setPubkey(bytes32 arg1, bytes32 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    pubkey[arg1].field_0 = arg2
    pubkey[arg1].field_256 = arg3
    emit PubkeyChanged(arg2, arg3, arg1);
}

function setInterface(bytes32 arg1, bytes4 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == Mask(32, 224, arg2)
    require arg3 == arg3
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    stor7[arg1][Mask(32, 224, arg2)] = arg3
    emit InterfaceChanged(arg3, arg1, Mask(32, 224, arg2));
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x59d1d43c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xc869023300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x691f343100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x124a319c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xa8fa568200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if '\Gc|' == Mask(32, 224, arg1):
        return True
    if 0xbc1c58d100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x3b3b57de00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xf1cb7e0600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x2203ab5600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setName(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor8[arg1].field_0 = 0
            idx = 0
            while (uint255(stor8[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor8[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor8[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor8[arg1].field_0 = 0
            idx = 0
            while stor8[arg1].field_1 + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor8[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor8[arg1].field_1 + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit NameChanged(Array(len=arg2.length, data=arg2[all]), arg1);
}

function setContenthash(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor2[arg1].field_0 = 0
            idx = 0
            while (uint255(stor2[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor2[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor2[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor2[arg1].field_0 = 0
            idx = 0
            while stor2[arg1].field_1 + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor2[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor2[arg1].field_1 + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit ContenthashChanged(Array(len=arg2.length, data=arg2[all]), arg1);
}

function setABI(bytes32 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 == ext_call.return_data[12 len 20]:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor13[ext_call.return_data[12 len 20]][msg.sender]
    if arg2 < 1:
        revert with 'NH{q', 17
    require not arg2 - 1 or not arg2
    if stor0[arg1][arg2].field_0:
        if stor0[arg1][arg2].field_0 == uint255(stor0[arg1][arg2].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if not arg3.length:
            stor0[arg1][arg2].field_0 = 0
            idx = 0
            while (uint255(stor0[arg1][arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor0[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[arg1][arg2].field_0 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor0[arg1][arg2][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while (uint255(stor0[arg1][arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor0[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if not arg3.length:
            stor0[arg1][arg2].field_0 = 0
            idx = 0
            while stor0[arg1][arg2].field_1 + 31 / 32 > idx:
                stor0[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[arg1][arg2].field_0 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor0[arg1][arg2][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor0[arg1][arg2].field_1 + 31 / 32 > idx:
                stor0[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit ABIChanged(arg1, arg2);
}

function text(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = sha3(arg1, 10)
    if stor10[arg1][arg2[all]].field_0:
        if stor10[arg1][arg2[all]].field_0 == uint255(stor10[arg1][arg2[all]].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor10[arg1][arg2[all]].field_0:
            if stor10[arg1][arg2[all]].field_0 == uint255(stor10[arg1][arg2[all]].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor10[arg1][arg2[all]].field_0):
                if 31 >= uint255(stor10[arg1][arg2[all]].field_0) * 0.5:
                    mem[128] = 256 * stor10[arg1][arg2[all]].field_8
                else:
                    mem[128] = stor10[arg1][arg2[all]].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1][arg2[all]].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][arg2[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1][arg2[all]].field_0 == stor10[arg1][arg2[all]].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1][arg2[all]].field_1:
                if 31 >= stor10[arg1][arg2[all]].field_1:
                    mem[128] = 256 * stor10[arg1][arg2[all]].field_8
                else:
                    mem[128] = stor10[arg1][arg2[all]].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1][arg2[all]].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][arg2[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor10[arg1][arg2[all]].field_0), data=mem[128 len ceil32(uint255(stor10[arg1][arg2[all]].field_0) * 0.5)]), 
    if stor10[arg1][arg2[all]].field_0 == stor10[arg1][arg2[all]].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1][arg2[all]].field_0:
        if stor10[arg1][arg2[all]].field_0 == uint255(stor10[arg1][arg2[all]].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor10[arg1][arg2[all]].field_0):
            if 31 >= uint255(stor10[arg1][arg2[all]].field_0) * 0.5:
                mem[128] = 256 * stor10[arg1][arg2[all]].field_8
            else:
                mem[128] = stor10[arg1][arg2[all]].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1][arg2[all]].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][arg2[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1][arg2[all]].field_0 == stor10[arg1][arg2[all]].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1][arg2[all]].field_1:
            if 31 >= stor10[arg1][arg2[all]].field_1:
                mem[128] = 256 * stor10[arg1][arg2[all]].field_8
            else:
                mem[128] = stor10[arg1][arg2[all]].field_0
                idx = 128
                s = 0
                while stor10[arg1][arg2[all]].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][arg2[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor10[arg1][arg2[all]].field_0, data=mem[128 len ceil32(stor10[arg1][arg2[all]].field_1)])
}

function setAddr(bytes32 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(ceil32(arg3.length)) + 101] = arg1
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 != ext_call.return_data[12 len 20]:
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = arg2
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = 64
        emit AddressChanged(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
        if arg2 == 60:
            require 20 == arg3.length
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = mem[128 len 20]
            emit AddrChanged(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97], arg1);
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 101] = arg1
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 97] = arg2
        mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 129] = 64
        emit AddressChanged(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
        if arg2 == 60:
            require 20 == arg3.length
            mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 97] = mem[128 len 20]
            emit AddrChanged(mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 97], arg1);
    if stor1[arg1][arg2].field_0:
        if stor1[arg1][arg2].field_0 == uint255(stor1[arg1][arg2].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[arg1][arg2].field_0 = 0
            idx = 0
            while (uint255(stor1[arg1][arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor1[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[arg1][arg2].field_0 == stor1[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[arg1][arg2].field_0 = 0
            idx = 0
            while stor1[arg1][arg2].field_1 + 31 / 32 > idx:
                stor1[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function addr(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1][60].field_0:
        if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][60].field_0:
            if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1[arg1][60].field_0):
                if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                    if 0 == uint255(stor1[arg1][60].field_0) * 0.5:
                        return 0
                    require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                    return stor1[arg1][60].field_96
                mem[128] = stor1[arg1][60].field_0
                idx = 128
                s = 0
                while (uint255(stor1[arg1][60].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[arg1][60][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1][60].field_1:
                if 31 >= stor1[arg1][60].field_1:
                    if 0 == uint255(stor1[arg1][60].field_0) * 0.5:
                        return 0
                    require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                    return stor1[arg1][60].field_96
                mem[128] = stor1[arg1][60].field_0
                idx = 128
                s = 0
                while stor1[arg1][60].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][60][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if 0 == uint255(stor1[arg1][60].field_0) * 0.5:
            return 0
        require 20 == uint255(stor1[arg1][60].field_0) * 0.5
        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128] = mem[128 len 20]
        return memory
          from ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128
           len 32
    if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
        revert with 'NH{q', 34
    if stor1[arg1][60].field_0:
        if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1[arg1][60].field_0):
            if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                if 0 == stor1[arg1][60].field_1:
                    return 0
                require 20 == stor1[arg1][60].field_1
                return stor1[arg1][60].field_96
            mem[128] = stor1[arg1][60].field_0
            idx = 128
            s = 0
            while (uint255(stor1[arg1][60].field_0) * 0.5) + 96 > idx:
                mem[idx + 32] = stor1[arg1][60][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    else:
        if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][60].field_1:
            if 31 >= stor1[arg1][60].field_1:
                if 0 == stor1[arg1][60].field_1:
                    return 0
                require 20 == stor1[arg1][60].field_1
                return stor1[arg1][60].field_96
            mem[128] = stor1[arg1][60].field_0
            idx = 128
            s = 0
            while stor1[arg1][60].field_1 + 96 > idx:
                mem[idx + 32] = stor1[arg1][60][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if 0 == stor1[arg1][60].field_1:
        return 0
    require 20 == stor1[arg1][60].field_1
    mem[ceil32(stor1[arg1][60].field_1) + 128] = mem[128 len 20]
    return memory
      from ceil32(stor1[arg1][60].field_1) + 128
       len 32
}

function name(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor8[arg1].field_0):
                if 31 < uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor8[arg1].field_8
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor8[arg1].field_8
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor8[arg1].field_0):
            if 31 < uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    mem[ceil32(stor8[arg1].field_1) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
        mem[ceil32(stor8[arg1].field_1) + stor8[arg1].field_1 + 192] = 0
    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 192 len 2 * ceil32(stor8[arg1].field_1)]), 
}

function zonehash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor3[arg1].field_0):
                if 31 < uint255(stor3[arg1].field_0) * 0.5:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor3[arg1].field_8
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1:
                if 31 < stor3[arg1].field_1:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor3[arg1].field_8
        mem[ceil32(uint255(stor3[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor3[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor3[arg1].field_0) * 0.5) > uint255(stor3[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor3[arg1].field_0) * 0.5) + (uint255(stor3[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)]), 
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor3[arg1].field_0):
            if 31 < uint255(stor3[arg1].field_0) * 0.5:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1:
            if 31 < stor3[arg1].field_1:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    mem[ceil32(stor3[arg1].field_1) + 192 len ceil32(stor3[arg1].field_1)] = mem[128 len ceil32(stor3[arg1].field_1)]
    if ceil32(stor3[arg1].field_1) > stor3[arg1].field_1:
        mem[ceil32(stor3[arg1].field_1) + stor3[arg1].field_1 + 192] = 0
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)], mem[(2 * ceil32(stor3[arg1].field_1)) + 192 len 2 * ceil32(stor3[arg1].field_1)]), 
}

function contenthash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor2[arg1].field_0):
                if 31 < uint255(stor2[arg1].field_0) * 0.5:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor2[arg1].field_8
        mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor2[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor2[arg1].field_0) * 0.5) > uint255(stor2[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + (uint255(stor2[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 < uint255(stor2[arg1].field_0) * 0.5:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
    if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
        mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
}

function addr(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1[arg1][arg2].field_0:
        if stor1[arg1][arg2].field_0 == uint255(stor1[arg1][arg2].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][arg2].field_0:
            if stor1[arg1][arg2].field_0 == uint255(stor1[arg1][arg2].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1[arg1][arg2].field_0):
                if 31 < uint255(stor1[arg1][arg2].field_0) * 0.5:
                    mem[128] = stor1[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * stor1[arg1][arg2].field_8
        else:
            if stor1[arg1][arg2].field_0 == stor1[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[arg1][arg2].field_1:
                if 31 < stor1[arg1][arg2].field_1:
                    mem[128] = stor1[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * stor1[arg1][arg2].field_8
        mem[ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5) + 192 len ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)]
        if ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5) > uint255(stor1[arg1][arg2].field_0) * 0.5:
            mem[ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5) + (uint255(stor1[arg1][arg2].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor1[arg1][arg2].field_0) * 0.5)]), 
    if stor1[arg1][arg2].field_0 == stor1[arg1][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor1[arg1][arg2].field_0:
        if stor1[arg1][arg2].field_0 == uint255(stor1[arg1][arg2].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1[arg1][arg2].field_0):
            if 31 < uint255(stor1[arg1][arg2].field_0) * 0.5:
                mem[128] = stor1[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor1[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1][arg2].field_0, data=mem[128 len ceil32(stor1[arg1][arg2].field_1)])
            mem[128] = 256 * stor1[arg1][arg2].field_8
    else:
        if stor1[arg1][arg2].field_0 == stor1[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][arg2].field_1:
            if 31 < stor1[arg1][arg2].field_1:
                mem[128] = stor1[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor1[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1][arg2].field_0, data=mem[128 len ceil32(stor1[arg1][arg2].field_1)])
            mem[128] = 256 * stor1[arg1][arg2].field_8
    mem[ceil32(stor1[arg1][arg2].field_1) + 192 len ceil32(stor1[arg1][arg2].field_1)] = mem[128 len ceil32(stor1[arg1][arg2].field_1)]
    if ceil32(stor1[arg1][arg2].field_1) > stor1[arg1][arg2].field_1:
        mem[ceil32(stor1[arg1][arg2].field_1) + stor1[arg1][arg2].field_1 + 192] = 0
    return Array(len=stor1[arg1][arg2].field_0, data=mem[128 len ceil32(stor1[arg1][arg2].field_1)], mem[(2 * ceil32(stor1[arg1][arg2].field_1)) + 192 len 2 * ceil32(stor1[arg1][arg2].field_1)]), 
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            delegate this.address with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_37] = return_data.size
                mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _25:
            mem[t] = u + -_24 - 64
            _46 = mem[s]
            _48 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _48:
                mem[v + u + 32] = mem[v + _46 + 32]
                v = v + 32
                continue 
            if ceil32(_48) > _48:
                mem[u + _48 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_48) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _55 = mem[64]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _55 + -mem[64] - 4]
            if not return_data.size:
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require delegate.return_code
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _50:
            mem[t] = u + -_49 - 64
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[u + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_64) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function dnsRecord(bytes32 arg1, bytes32 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0:
        if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0:
            if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0):
                if 31 < uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5:
                    mem[128] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0), data=mem[128 len ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)]), 
                mem[128] = 256 * stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_8
        else:
            if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1:
                if 31 < stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1:
                    mem[128] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0), data=mem[128 len ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)]), 
                mem[128] = 256 * stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_8
        mem[ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) + 192 len ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)]
        if ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) > uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5:
            mem[ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) + (uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0), data=mem[128 len ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5)]), 
    if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 < 32:
        revert with 'NH{q', 34
    if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0:
        if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0):
            if 31 < uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5:
                mem[128] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0
                idx = 128
                s = 0
                while (uint255(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0, data=mem[128 len ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)]), 
            mem[128] = 256 * stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_8
    else:
        if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0 == stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1:
            if 31 < stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1:
                mem[128] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0
                idx = 128
                s = 0
                while stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][stor4[arg1]][arg2][arg3 << 240][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0, data=mem[128 len ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)]), 
            mem[128] = 256 * stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_8
    mem[ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1) + 192 len ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)] = mem[128 len ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)]
    if ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1) > stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1:
        mem[ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1) + stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1 + 192] = 0
    return Array(len=stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_0, data=mem[128 len ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)], mem[(2 * ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)) + 192 len 2 * ceil32(stor5[arg1][stor4[arg1]][arg2][arg3 << 240].field_1)]), 
}

function setAddr(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 != ext_call.return_data[12 len 20]:
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        mem[ceil32(return_data.size) + 164] = arg1
        require ext_code.size(stor11)
        staticcall stor11.owner(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor12 != ext_call.return_data[12 len 20]:
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor13[ext_call.return_data[12 len 20]][msg.sender]
            mem[(2 * ceil32(return_data.size)) + 160] = 60
            mem[(2 * ceil32(return_data.size)) + 192] = 64
            mem[(2 * ceil32(return_data.size)) + 224] = 20
            mem[(2 * ceil32(return_data.size)) + 256] = address(arg2)
            mem[(2 * ceil32(return_data.size)) + 276] = 0
            emit AddressChanged(bytes32 arg1, uint256 arg2, bytes arg3):
                                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 128],
                                arg1,
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            emit AddrChanged(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x6352211e with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor13[ext_call.return_data[12 len 20]][msg.sender]
            mem[(4 * ceil32(return_data.size)) + 160] = 60
            mem[(4 * ceil32(return_data.size)) + 192] = 64
            mem[(4 * ceil32(return_data.size)) + 224] = 20
            mem[(4 * ceil32(return_data.size)) + 256] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 276] = 0
            emit AddressChanged(bytes32 arg1, uint256 arg2, bytes arg3):
                                mem[(4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 128],
                                arg1,
            mem[(4 * ceil32(return_data.size)) + 160] = arg2
            emit AddrChanged(mem[(4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1);
    else:
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        mem[(2 * ceil32(return_data.size)) + 164] = arg1
        require ext_code.size(stor11)
        staticcall stor11.owner(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor12 != ext_call.return_data[12 len 20]:
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor13[ext_call.return_data[12 len 20]][msg.sender]
            mem[(4 * ceil32(return_data.size)) + 160] = 60
            mem[(4 * ceil32(return_data.size)) + 192] = 64
            mem[(4 * ceil32(return_data.size)) + 224] = 20
            mem[(4 * ceil32(return_data.size)) + 256] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 276] = 0
            emit AddressChanged(bytes32 arg1, uint256 arg2, bytes arg3):
                                mem[(4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 128],
                                arg1,
            mem[(4 * ceil32(return_data.size)) + 160] = arg2
            emit AddrChanged(mem[(4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1);
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x6352211e with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require stor13[ext_call.return_data[12 len 20]][msg.sender]
            mem[(4 * ceil32(return_data.size)) + 160] = 60
            mem[(4 * ceil32(return_data.size)) + 192] = 64
            mem[(4 * ceil32(return_data.size)) + 224] = 20
            mem[(4 * ceil32(return_data.size)) + 256] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 276] = 0
            emit AddressChanged(bytes32 arg1, uint256 arg2, bytes arg3):
                                mem[(4 * ceil32(return_data.size)) + 160 len (7 * ceil32(return_data.size)) + 128],
                                arg1,
            mem[(4 * ceil32(return_data.size)) + 160] = arg2
            emit AddrChanged(mem[(4 * ceil32(return_data.size)) + 160 len (7 * ceil32(return_data.size)) + 32], arg1);
    if stor1[arg1][60].field_0:
        if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        stor1[arg1][60].field_0 = 0
        stor1[arg1][60].field_1 = 20
        stor1[arg1][60].field_8 = address(arg2) << 88
        idx = 0
        while (uint255(stor1[arg1][60].field_0) * 0.5) + 31 / 32 > idx:
            stor1[arg1][60][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
            revert with 'NH{q', 34
        stor1[arg1][60].field_0 = 0
        stor1[arg1][60].field_1 = 20
        stor1[arg1][60].field_8 = address(arg2) << 88
        idx = 0
        while stor1[arg1][60].field_1 + 31 / 32 > idx:
            stor1[arg1][60][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setZonehash(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[100] = arg1
    require ext_code.size(stor11)
    staticcall stor11.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12 != ext_call.return_data[12 len 20]:
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if Mask(256, -1, stor3[arg1].field_0):
                    if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                        mem[ceil32(return_data.size) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                        idx = ceil32(return_data.size) + 128
                        s = 0
                        while ceil32(return_data.size) + (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[arg1].field_1:
                    if 31 >= stor3[arg1].field_1:
                        mem[ceil32(return_data.size) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                        idx = ceil32(return_data.size) + 128
                        s = 0
                        while ceil32(return_data.size) + stor3[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + ceil32(return_data.size) + 256 len arg2.length] = arg2[all]
            mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + ceil32(return_data.size) + arg2.length + 256] = 0
            emit DNSZonehashChanged(Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)], arg2.length, arg2[all], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + arg2.length + 256 len ceil32(arg2.length) - arg2.length]), ceil32(uint255(stor3[arg1].field_0) * 0.5) + 96, arg1);
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if Mask(256, -1, stor3[arg1].field_0):
                    if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                        mem[ceil32(return_data.size) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                        idx = ceil32(return_data.size) + 128
                        s = 0
                        while ceil32(return_data.size) + (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[arg1].field_1:
                    if 31 >= stor3[arg1].field_1:
                        mem[ceil32(return_data.size) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                        idx = ceil32(return_data.size) + 128
                        s = 0
                        while ceil32(return_data.size) + stor3[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(2 * ceil32(stor3[arg1].field_1)) + ceil32(return_data.size) + 256 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[arg1].field_1)) + ceil32(return_data.size) + arg2.length + 256] = 0
            emit DNSZonehashChanged(Array(len=stor3[arg1].field_0, data=mem[ceil32(return_data.size) + 128 len ceil32(stor3[arg1].field_1)], arg2.length, arg2[all], mem[ceil32(return_data.size) + (2 * ceil32(stor3[arg1].field_1)) + arg2.length + 256 len ceil32(arg2.length) - arg2.length]), ceil32(stor3[arg1].field_1) + 96, arg1);
    else:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(stor12)
        staticcall stor12.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require stor13[ext_call.return_data[12 len 20]][msg.sender]
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if Mask(256, -1, stor3[arg1].field_0):
                    if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                        mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor3[arg1].field_0
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[arg1].field_1:
                    if 31 >= stor3[arg1].field_1:
                        mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor3[arg1].field_0
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + stor3[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + (2 * ceil32(return_data.size)) + 256 len arg2.length] = arg2[all]
            mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + (2 * ceil32(return_data.size)) + arg2.length + 256] = 0
            emit DNSZonehashChanged(Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)], arg2.length, arg2[all], mem[(2 * ceil32(return_data.size)) + (2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + arg2.length + 256 len ceil32(arg2.length) - arg2.length]), ceil32(uint255(stor3[arg1].field_0) * 0.5) + 96, arg1);
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if Mask(256, -1, stor3[arg1].field_0):
                    if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                        mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor3[arg1].field_0
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[arg1].field_1:
                    if 31 >= stor3[arg1].field_1:
                        mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor3[arg1].field_8
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor3[arg1].field_0
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + stor3[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor3[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor3[arg1].field_0:
                if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while (uint255(stor3[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not arg2.length:
                    stor3[arg1].field_0 = 0
                    idx = 0
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor3[arg1].field_0 = (2 * arg2.length) + 1
                    s = 0
                    idx = arg2 + 36
                    while arg2 + arg2.length + 36 > idx:
                        stor3[arg1][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg2.length + 31) >> 5
                    while stor3[arg1].field_1 + 31 / 32 > idx:
                        stor3[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(2 * ceil32(stor3[arg1].field_1)) + (2 * ceil32(return_data.size)) + 256 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[arg1].field_1)) + (2 * ceil32(return_data.size)) + arg2.length + 256] = 0
            emit DNSZonehashChanged(Array(len=stor3[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 128 len ceil32(stor3[arg1].field_1)], arg2.length, arg2[all], mem[(2 * ceil32(return_data.size)) + (2 * ceil32(stor3[arg1].field_1)) + arg2.length + 256 len ceil32(arg2.length) - arg2.length]), ceil32(stor3[arg1].field_1) + 96, arg1);
}

function ABI(bytes32 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 0
    idx = 1
    while idx <= arg2:
        if not arg2 or not idx:
            idx = 2 * idx
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 0)
        if stor0[arg1][idx].field_0:
            if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if uint255(stor0[arg1][idx].field_0) * 0.5 <= 0:
                idx = 2 * idx
                continue 
            mem[0] = idx
            mem[32] = sha3(arg1, 0)
            if stor0[arg1][idx].field_0:
                if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                mem[64] = ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128
                mem[96] = uint255(stor0[arg1][idx].field_0) * 0.5
                if stor0[arg1][idx].field_0:
                    if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor0[arg1][idx].field_0):
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                        s = 0
                        while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                            mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                            mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                        return idx, 
                               Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                    if 31 >= uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[128] = 256 * stor0[arg1][idx].field_8
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                        s = 0
                        while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                            mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                            mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                        return idx, 
                               Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                    mem[128] = stor0[arg1][idx].field_0
                    s = 128
                    t = sha3(sha3(idx, sha3(arg1, 0)))
                    while (uint255(stor0[arg1][idx].field_0) * 0.5) + 96 > s:
                        mem[s + 32] = stor1[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = uint255(stor0[arg1][idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[s + mem[64] + 96] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[mem[64] + (uint255(stor0[arg1][idx].field_0) * 0.5) + 96] = 0
                    return idx, 
                           Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[mem[64] + 96 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor0[arg1][idx].field_1:
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                    return idx, 
                           Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                if 31 >= stor0[arg1][idx].field_1:
                    mem[128] = 256 * stor0[arg1][idx].field_8
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                    return idx, 
                           Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                mem[128] = stor0[arg1][idx].field_0
                s = 128
                t = sha3(sha3(idx, sha3(arg1, 0)))
                while stor0[arg1][idx].field_1 + 96 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                _302 = mem[64]
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = uint255(stor0[arg1][idx].field_0) * 0.5
                s = 0
                while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[s + mem[64] + 96] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[_302 + (uint255(stor0[arg1][idx].field_0) * 0.5) + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + _302 + -mem[64] + 96
            if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(stor0[arg1][idx].field_1) + 128
            mem[96] = stor0[arg1][idx].field_1
            if stor0[arg1][idx].field_0:
                if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not Mask(256, -1, stor0[arg1][idx].field_0):
                    mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                    mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                    mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                    s = 0
                    while s < stor0[arg1][idx].field_1:
                        mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                        mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                    return idx, 
                           Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
                if 31 >= uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[128] = 256 * stor0[arg1][idx].field_8
                    mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                    mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                    mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                    s = 0
                    while s < stor0[arg1][idx].field_1:
                        mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                        mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                    return idx, 
                           Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
                mem[128] = stor0[arg1][idx].field_0
                s = 128
                t = sha3(sha3(idx, sha3(arg1, 0)))
                while (uint255(stor0[arg1][idx].field_0) * 0.5) + 96 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                _303 = mem[64]
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = stor0[arg1][idx].field_1
                s = 0
                while s < stor0[arg1][idx].field_1:
                    mem[s + mem[64] + 96] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                    mem[_303 + stor0[arg1][idx].field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(stor0[arg1][idx].field_1) + _303 + -mem[64] + 96
            if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1][idx].field_1:
                mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                s = 0
                while s < stor0[arg1][idx].field_1:
                    mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                    mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                return idx, 
                       Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
            if 31 >= stor0[arg1][idx].field_1:
                mem[128] = 256 * stor0[arg1][idx].field_8
                mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                s = 0
                while s < stor0[arg1][idx].field_1:
                    mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                    mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                return idx, 
                       Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
            mem[128] = stor0[arg1][idx].field_0
            s = 128
            t = sha3(sha3(idx, sha3(arg1, 0)))
            while stor0[arg1][idx].field_1 + 96 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            _304 = mem[64]
            mem[mem[64]] = idx
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = stor0[arg1][idx].field_1
            s = 0
            while s < stor0[arg1][idx].field_1:
                mem[s + mem[64] + 96] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                mem[_304 + stor0[arg1][idx].field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(stor0[arg1][idx].field_1) + _304 + -mem[64] + 96
        if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1][idx].field_1 <= 0:
            idx = 2 * idx
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 0)
        if stor0[arg1][idx].field_0:
            if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128
            mem[96] = uint255(stor0[arg1][idx].field_0) * 0.5
            if stor0[arg1][idx].field_0:
                if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not Mask(256, -1, stor0[arg1][idx].field_0):
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                    return idx, 
                           Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                if 31 >= uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[128] = 256 * stor0[arg1][idx].field_8
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                    return idx, 
                           Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
                mem[128] = stor0[arg1][idx].field_0
                s = 128
                t = sha3(sha3(idx, sha3(arg1, 0)))
                while (uint255(stor0[arg1][idx].field_0) * 0.5) + 96 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                _305 = mem[64]
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = uint255(stor0[arg1][idx].field_0) * 0.5
                s = 0
                while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[s + mem[64] + 96] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[_305 + (uint255(stor0[arg1][idx].field_0) * 0.5) + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + _305 + -mem[64] + 96
            if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1][idx].field_1:
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                s = 0
                while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                return idx, 
                       Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
            if 31 >= stor0[arg1][idx].field_1:
                mem[128] = 256 * stor0[arg1][idx].field_8
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 128] = idx
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 160] = 64
                mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 192] = uint255(stor0[arg1][idx].field_0) * 0.5
                s = 0
                while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[s + ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                    mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + (uint255(stor0[arg1][idx].field_0) * 0.5) + 224] = 0
                return idx, 
                       Array(len=2 * Mask(256, -1, stor0[arg1][idx].field_0), data=mem[ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + 224 len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5)])
            mem[128] = stor0[arg1][idx].field_0
            s = 128
            t = sha3(sha3(idx, sha3(arg1, 0)))
            while stor0[arg1][idx].field_1 + 96 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            _306 = mem[64]
            mem[mem[64]] = idx
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = uint255(stor0[arg1][idx].field_0) * 0.5
            s = 0
            while s < uint255(stor0[arg1][idx].field_0) * 0.5:
                mem[s + mem[64] + 96] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) > uint255(stor0[arg1][idx].field_0) * 0.5:
                mem[_306 + (uint255(stor0[arg1][idx].field_0) * 0.5) + 96] = 0
            return memory
              from mem[64]
               len ceil32(uint255(stor0[arg1][idx].field_0) * 0.5) + _306 + -mem[64] + 96
        if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor0[arg1][idx].field_1) + 128
        mem[96] = stor0[arg1][idx].field_1
        if stor0[arg1][idx].field_0:
            if stor0[arg1][idx].field_0 == uint255(stor0[arg1][idx].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor0[arg1][idx].field_0):
                mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                s = 0
                while s < stor0[arg1][idx].field_1:
                    mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                    mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                return idx, 
                       Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
            if 31 >= uint255(stor0[arg1][idx].field_0) * 0.5:
                mem[128] = 256 * stor0[arg1][idx].field_8
                mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
                mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
                mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
                s = 0
                while s < stor0[arg1][idx].field_1:
                    mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                    mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
                return idx, 
                       Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
            mem[128] = stor0[arg1][idx].field_0
            s = 128
            t = sha3(sha3(idx, sha3(arg1, 0)))
            while (uint255(stor0[arg1][idx].field_0) * 0.5) + 96 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            _307 = mem[64]
            mem[mem[64]] = idx
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = stor0[arg1][idx].field_1
            s = 0
            while s < stor0[arg1][idx].field_1:
                mem[s + mem[64] + 96] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                mem[_307 + stor0[arg1][idx].field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(stor0[arg1][idx].field_1) + _307 + -mem[64] + 96
        if stor0[arg1][idx].field_0 == stor0[arg1][idx].field_1 < 32:
            revert with 'NH{q', 34
        if not stor0[arg1][idx].field_1:
            mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
            mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
            mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
            s = 0
            while s < stor0[arg1][idx].field_1:
                mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
            return idx, 
                   Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
        if 31 >= stor0[arg1][idx].field_1:
            mem[128] = 256 * stor0[arg1][idx].field_8
            mem[ceil32(stor0[arg1][idx].field_1) + 128] = idx
            mem[ceil32(stor0[arg1][idx].field_1) + 160] = 64
            mem[ceil32(stor0[arg1][idx].field_1) + 192] = stor0[arg1][idx].field_1
            s = 0
            while s < stor0[arg1][idx].field_1:
                mem[s + ceil32(stor0[arg1][idx].field_1) + 224] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
                mem[ceil32(stor0[arg1][idx].field_1) + stor0[arg1][idx].field_1 + 224] = 0
            return idx, 
                   Array(len=stor0[arg1][idx].field_0, data=mem[ceil32(stor0[arg1][idx].field_1) + 224 len ceil32(stor0[arg1][idx].field_1)])
        mem[128] = stor0[arg1][idx].field_0
        s = 128
        t = sha3(sha3(idx, sha3(arg1, 0)))
        while stor0[arg1][idx].field_1 + 96 > s:
            mem[s + 32] = stor1[t].field_0
            s = s + 32
            t = t + 1
            continue 
        _308 = mem[64]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = stor0[arg1][idx].field_1
        s = 0
        while s < stor0[arg1][idx].field_1:
            mem[s + mem[64] + 96] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(stor0[arg1][idx].field_1) > stor0[arg1][idx].field_1:
            mem[_308 + stor0[arg1][idx].field_1 + 96] = 0
        return memory
          from mem[64]
           len ceil32(stor0[arg1][idx].field_1) + _308 + -mem[64] + 96
    return 0, 64, 0
}

function interfaceImplementer(bytes32 arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == Mask(32, 224, arg2)
    if stor7[arg1][Mask(32, 224, arg2)]:
        return stor7[arg1][Mask(32, 224, arg2)]
    if stor1[arg1][60].field_0:
        if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][60].field_0:
            if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor1[arg1][60].field_0):
                if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                    require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                    _19 = mem[128]
                    if mem[128 len 20]:
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128] = 36
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 164 len 28] = 0x1ffc9a7000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 160 len 4] = supportsInterface(bytes4 arg1)
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                        staticcall Mask(160, 96, _19) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                gas gas_remaining wei
                               args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                        if return_data.size:
                            if ext_call.success:
                                if return_data.size >= 32:
                                    if 31 >= return_data.size:
                                        revert with 'NH{q', 50
                        else:
                            if ext_call.success:
                                if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                    if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                        revert with 'NH{q', 50
                                    if Mask(8, 248, mem[159]):
                                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 28]
                                        staticcall Mask(160, 96, _19) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 4] with:
                                                gas gas_remaining wei
                                               args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 268]
                                        if return_data.size:
                                            if ext_call.success:
                                                if return_data.size >= 32:
                                                    if 31 >= return_data.size:
                                                        revert with 'NH{q', 50
                                        else:
                                            if ext_call.success:
                                                if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                                    if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                                        revert with 'NH{q', 50
                                                    if Mask(8, 248, mem[159]):
                                                        return (Mask(160, 96, _19) >> 96)
            else:
                if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                    if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                        require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                        if stor1[arg1][60].field_96:
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                            staticcall stor1[arg1][60].field_96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                            if not return_data.size:
                                if ext_call.success:
                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                else:
                    mem[128] = stor1[arg1][60].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1][60].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][60][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                        require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                        _3282 = mem[128]
                        if mem[128 len 20]:
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 164] = 0x1ffc9a700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128] = 36
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 160 len 4] = supportsInterface(bytes4 arg1)
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = 0, 0x1ffc9a700000000000000000000000000000000000000000000000000000000, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                            staticcall Mask(160, 96, _3282) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                            if return_data.size:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                            revert with 'NH{q', 50
                                        if Mask(8, 248, mem[159]):
                                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 28]
                                            staticcall Mask(160, 96, _3282) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 268]
                                            if return_data.size:
                                                if ext_call.success:
                                                    if return_data.size >= 32:
                                                        if 31 >= return_data.size:
                                                            revert with 'NH{q', 50
                                            else:
                                                if ext_call.success:
                                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                                            revert with 'NH{q', 50
                                                        if Mask(8, 248, mem[159]):
                                                            return (Mask(160, 96, _3282) >> 96)
        else:
            if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
                revert with 'NH{q', 34
            if not stor1[arg1][60].field_1:
                if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                    require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                    _26 = mem[128]
                    if mem[128 len 20]:
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128] = 36
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 164 len 28] = 0x1ffc9a7000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 160 len 4] = supportsInterface(bytes4 arg1)
                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                        staticcall Mask(160, 96, _26) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                gas gas_remaining wei
                               args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                        if return_data.size:
                            if ext_call.success:
                                if return_data.size >= 32:
                                    if 31 >= return_data.size:
                                        revert with 'NH{q', 50
                        else:
                            if ext_call.success:
                                if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                    if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                        revert with 'NH{q', 50
                                    if Mask(8, 248, mem[159]):
                                        mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 28]
                                        staticcall Mask(160, 96, _26) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 4] with:
                                                gas gas_remaining wei
                                               args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 268]
                                        if return_data.size:
                                            if ext_call.success:
                                                if return_data.size >= 32:
                                                    if 31 >= return_data.size:
                                                        revert with 'NH{q', 50
                                        else:
                                            if ext_call.success:
                                                if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                                    if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                                        revert with 'NH{q', 50
                                                    if Mask(8, 248, mem[159]):
                                                        return (Mask(160, 96, _26) >> 96)
            else:
                if 31 >= stor1[arg1][60].field_1:
                    if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                        require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                        if stor1[arg1][60].field_96:
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                            staticcall stor1[arg1][60].field_96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                            if not return_data.size:
                                if ext_call.success:
                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                else:
                    mem[128] = stor1[arg1][60].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1][60].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][60][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor1[arg1][60].field_0) * 0.5 != 0:
                        require 20 == uint255(stor1[arg1][60].field_0) * 0.5
                        _3285 = mem[128]
                        if mem[128 len 20]:
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 164] = 0x1ffc9a700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 128] = 36
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 160 len 4] = supportsInterface(bytes4 arg1)
                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 64] = 0, 0x1ffc9a700000000000000000000000000000000000000000000000000000000, mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 28]
                            staticcall Mask(160, 96, _3285) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 200]
                            if return_data.size:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                            revert with 'NH{q', 50
                                        if Mask(8, 248, mem[159]):
                                            mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 28]
                                            staticcall Mask(160, 96, _3285) >> 96.mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 264 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[ceil32(uint255(stor1[arg1][60].field_0) * 0.5) + 268]
                                            if return_data.size:
                                                if ext_call.success:
                                                    if return_data.size >= 32:
                                                        if 31 >= return_data.size:
                                                            revert with 'NH{q', 50
                                            else:
                                                if ext_call.success:
                                                    if uint255(stor1[arg1][60].field_0) * 0.5 >= 32:
                                                        if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                                                            revert with 'NH{q', 50
                                                        if Mask(8, 248, mem[159]):
                                                            return (Mask(160, 96, _3285) >> 96)
    else:
        if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[arg1][60].field_0:
            if stor1[arg1][60].field_0 == uint255(stor1[arg1][60].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor1[arg1][60].field_0):
                if stor1[arg1][60].field_1 != 0:
                    require 20 == stor1[arg1][60].field_1
                    _27 = mem[128]
                    if mem[128 len 20]:
                        mem[ceil32(stor1[arg1][60].field_1) + 128] = 36
                        mem[ceil32(stor1[arg1][60].field_1) + 164 len 28] = 0x1ffc9a7000000000000000000000000000000000000000000000000
                        mem[ceil32(stor1[arg1][60].field_1) + 160 len 4] = supportsInterface(bytes4 arg1)
                        mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                        staticcall Mask(160, 96, _27) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                gas gas_remaining wei
                               args mem[ceil32(stor1[arg1][60].field_1) + 200]
                        if return_data.size:
                            if ext_call.success:
                                if return_data.size >= 32:
                                    if 31 >= return_data.size:
                                        revert with 'NH{q', 50
                        else:
                            if ext_call.success:
                                if stor1[arg1][60].field_1 >= 32:
                                    if 31 >= stor1[arg1][60].field_1:
                                        revert with 'NH{q', 50
                                    if Mask(8, 248, mem[159]):
                                        mem[ceil32(stor1[arg1][60].field_1) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(stor1[arg1][60].field_1) + 264 len 28]
                                        staticcall Mask(160, 96, _27) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 264 len 4] with:
                                                gas gas_remaining wei
                                               args mem[ceil32(stor1[arg1][60].field_1) + 268]
                                        if return_data.size:
                                            if ext_call.success:
                                                if return_data.size >= 32:
                                                    if 31 >= return_data.size:
                                                        revert with 'NH{q', 50
                                        else:
                                            if ext_call.success:
                                                if stor1[arg1][60].field_1 >= 32:
                                                    if 31 >= stor1[arg1][60].field_1:
                                                        revert with 'NH{q', 50
                                                    if Mask(8, 248, mem[159]):
                                                        return (Mask(160, 96, _27) >> 96)
            else:
                if 31 >= uint255(stor1[arg1][60].field_0) * 0.5:
                    if stor1[arg1][60].field_1 != 0:
                        require 20 == stor1[arg1][60].field_1
                        if stor1[arg1][60].field_96:
                            mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                            staticcall stor1[arg1][60].field_96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(stor1[arg1][60].field_1) + 200]
                            if not return_data.size:
                                if ext_call.success:
                                    if stor1[arg1][60].field_1 >= 32:
                                        if 31 >= stor1[arg1][60].field_1:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                else:
                    mem[128] = stor1[arg1][60].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1][60].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][60][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor1[arg1][60].field_1 != 0:
                        require 20 == stor1[arg1][60].field_1
                        _3288 = mem[128]
                        if mem[128 len 20]:
                            mem[ceil32(stor1[arg1][60].field_1) + 164] = 0x1ffc9a700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor1[arg1][60].field_1) + 128] = 36
                            mem[ceil32(stor1[arg1][60].field_1) + 160 len 4] = supportsInterface(bytes4 arg1)
                            mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = 0, 0x1ffc9a700000000000000000000000000000000000000000000000000000000, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                            staticcall Mask(160, 96, _3288) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(stor1[arg1][60].field_1) + 200]
                            if return_data.size:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if stor1[arg1][60].field_1 >= 32:
                                        if 31 >= stor1[arg1][60].field_1:
                                            revert with 'NH{q', 50
                                        if Mask(8, 248, mem[159]):
                                            mem[ceil32(stor1[arg1][60].field_1) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(stor1[arg1][60].field_1) + 264 len 28]
                                            staticcall Mask(160, 96, _3288) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 264 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[ceil32(stor1[arg1][60].field_1) + 268]
                                            if return_data.size:
                                                if ext_call.success:
                                                    if return_data.size >= 32:
                                                        if 31 >= return_data.size:
                                                            revert with 'NH{q', 50
                                            else:
                                                if ext_call.success:
                                                    if stor1[arg1][60].field_1 >= 32:
                                                        if 31 >= stor1[arg1][60].field_1:
                                                            revert with 'NH{q', 50
                                                        if Mask(8, 248, mem[159]):
                                                            return (Mask(160, 96, _3288) >> 96)
        else:
            if stor1[arg1][60].field_0 == stor1[arg1][60].field_1 < 32:
                revert with 'NH{q', 34
            if not stor1[arg1][60].field_1:
                if stor1[arg1][60].field_1 != 0:
                    require 20 == stor1[arg1][60].field_1
                    _36 = mem[128]
                    if mem[128 len 20]:
                        mem[ceil32(stor1[arg1][60].field_1) + 128] = 36
                        mem[ceil32(stor1[arg1][60].field_1) + 164 len 28] = 0x1ffc9a7000000000000000000000000000000000000000000000000
                        mem[ceil32(stor1[arg1][60].field_1) + 160 len 4] = supportsInterface(bytes4 arg1)
                        mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                        staticcall Mask(160, 96, _36) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                gas gas_remaining wei
                               args mem[ceil32(stor1[arg1][60].field_1) + 200]
                        if return_data.size:
                            if ext_call.success:
                                if return_data.size >= 32:
                                    if 31 >= return_data.size:
                                        revert with 'NH{q', 50
                        else:
                            if ext_call.success:
                                if stor1[arg1][60].field_1 >= 32:
                                    if 31 >= stor1[arg1][60].field_1:
                                        revert with 'NH{q', 50
                                    if Mask(8, 248, mem[159]):
                                        mem[ceil32(stor1[arg1][60].field_1) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(stor1[arg1][60].field_1) + 264 len 28]
                                        staticcall Mask(160, 96, _36) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 264 len 4] with:
                                                gas gas_remaining wei
                                               args mem[ceil32(stor1[arg1][60].field_1) + 268]
                                        if return_data.size:
                                            if ext_call.success:
                                                if return_data.size >= 32:
                                                    if 31 >= return_data.size:
                                                        revert with 'NH{q', 50
                                        else:
                                            if ext_call.success:
                                                if stor1[arg1][60].field_1 >= 32:
                                                    if 31 >= stor1[arg1][60].field_1:
                                                        revert with 'NH{q', 50
                                                    if Mask(8, 248, mem[159]):
                                                        return (Mask(160, 96, _36) >> 96)
            else:
                if 31 >= stor1[arg1][60].field_1:
                    if stor1[arg1][60].field_1 != 0:
                        require 20 == stor1[arg1][60].field_1
                        if stor1[arg1][60].field_96:
                            mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                            staticcall stor1[arg1][60].field_96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(stor1[arg1][60].field_1) + 200]
                            if not return_data.size:
                                if ext_call.success:
                                    if stor1[arg1][60].field_1 >= 32:
                                        if 31 >= stor1[arg1][60].field_1:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                else:
                    mem[128] = stor1[arg1][60].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1][60].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][60][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor1[arg1][60].field_1 != 0:
                        require 20 == stor1[arg1][60].field_1
                        _3291 = mem[128]
                        if mem[128 len 20]:
                            mem[ceil32(stor1[arg1][60].field_1) + 164] = 0x1ffc9a700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor1[arg1][60].field_1) + 128] = 36
                            mem[ceil32(stor1[arg1][60].field_1) + 160 len 4] = supportsInterface(bytes4 arg1)
                            mem[ceil32(stor1[arg1][60].field_1) + 196 len 64] = 0, 0x1ffc9a700000000000000000000000000000000000000000000000000000000, mem[ceil32(stor1[arg1][60].field_1) + 196 len 28]
                            staticcall Mask(160, 96, _3291) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 196 len 4] with:
                                    gas gas_remaining wei
                                   args mem[ceil32(stor1[arg1][60].field_1) + 200]
                            if return_data.size:
                                if ext_call.success:
                                    if return_data.size >= 32:
                                        if 31 >= return_data.size:
                                            revert with 'NH{q', 50
                            else:
                                if ext_call.success:
                                    if stor1[arg1][60].field_1 >= 32:
                                        if 31 >= stor1[arg1][60].field_1:
                                            revert with 'NH{q', 50
                                        if Mask(8, 248, mem[159]):
                                            mem[ceil32(stor1[arg1][60].field_1) + 264 len 64] = 0, Mask(32, 224, arg2), mem[ceil32(stor1[arg1][60].field_1) + 264 len 28]
                                            staticcall Mask(160, 96, _3291) >> 96.mem[ceil32(stor1[arg1][60].field_1) + 264 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[ceil32(stor1[arg1][60].field_1) + 268]
                                            if return_data.size:
                                                if ext_call.success:
                                                    if return_data.size >= 32:
                                                        if 31 >= return_data.size:
                                                            revert with 'NH{q', 50
                                            else:
                                                if ext_call.success:
                                                    if stor1[arg1][60].field_1 >= 32:
                                                        if 31 >= stor1[arg1][60].field_1:
                                                            revert with 'NH{q', 50
                                                        if Mask(8, 248, mem[159]):
                                                            return (Mask(160, 96, _3291) >> 96)
    return 0
}



}
