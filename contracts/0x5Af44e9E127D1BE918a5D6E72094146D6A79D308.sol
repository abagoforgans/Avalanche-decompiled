contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_fd7ee574Address;
address nodeAddress;
address sub_3540eccfAddress;
uint256 maxSupply;
uint8 stor6;
uint256 sub_284ac1b7;
uint256 sub_cbb26769;
uint256 sub_631e4b85;
uint256 sub_de42c69e;
uint256 totalParticipants;
array of struct stor12;
array of struct stor13;
mapping of uint256 sub_4ed8d840;

function sub_09e76777(?) payable {
    return bool(stor6)
}

function sub_284ac1b7(?) payable {
    return sub_284ac1b7
}

function sub_3540eccf(?) payable {
    return sub_3540eccfAddress
}

function sub_4ed8d840(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4ed8d840[arg1]
}

function sub_631e4b85(?) payable {
    return sub_631e4b85
}

function owner() payable {
    return owner
}

function totalParticipants() payable {
    return totalParticipants
}

function sub_cbb26769(?) payable {
    return sub_cbb26769
}

function maxSupply() payable {
    return maxSupply
}

function node() payable {
    return nodeAddress
}

function sub_de42c69e(?) payable {
    return sub_de42c69e
}

function sub_fd7ee574(?) payable {
    return sub_fd7ee574Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_80da21b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_284ac1b7 = arg1
}

function sub_aa4e36a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_631e4b85 = arg1
}

function sub_b59940b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_de42c69e = arg1
}

function setMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSupply = arg1
}

function sub_3e16c596(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = uint8(bool(arg1))
}

function setNodeManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeAddress = arg1
}

function sub_5774c3f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fd7ee574Address = address(arg1)
}

function sub_b1537481(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5d5b567e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_ee99d1f8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_14f055de(?) payable {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function sub_6454dade(?) payable {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function sub_8e5f6e36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(sub_3540eccfAddress)
    staticcall sub_3540eccfAddress.whitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not a whitelisted user'
    if not stor6:
        revert with 0, 'Presale is not active'
    if sub_cbb26769 > -arg1 - 1:
        revert with 'NH{q', 17
    if maxSupply < sub_cbb26769 + arg1:
        revert with 0, 'Not enough nodes left'
    if arg1 > sub_631e4b85:
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                revert with 0, 32, 2 * Mask(256, -1, stor12.length.field_1), Mask(248, 8, stor12.length)
            if bool(stor12.length) != 1:
                revert with memory
                  from ceil32(return_data.size) + 96
                   len -ceil32(return_data.size) - 96
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[ceil32(return_data.size) + idx + 164] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor12.length.field_1), mem[ceil32(return_data.size) + 164 len ceil32(stor12.length.field_1)]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            revert with 0, 32, stor12.length % 128, Mask(248, 8, stor12.length)
        if bool(stor12.length) != 1:
            revert with memory
              from ceil32(return_data.size) + 96
               len -ceil32(return_data.size) - 96
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[ceil32(return_data.size) + idx + 164] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor12.length % 128, mem[ceil32(return_data.size) + 164 len ceil32(stor12.length.field_1)]
    if sub_4ed8d840[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_de42c69e < sub_4ed8d840[address(msg.sender)] + arg1:
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                revert with 0, 32, 2 * Mask(256, -1, stor13.length.field_1), Mask(248, 8, stor13.length)
            if bool(stor13.length) != 1:
                revert with memory
                  from ceil32(return_data.size) + 96
                   len -ceil32(return_data.size) - 96
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[ceil32(return_data.size) + idx + 164] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor13.length.field_1), mem[ceil32(return_data.size) + 164 len ceil32(stor13.length.field_1)]
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            revert with 0, 32, stor13.length % 128, Mask(248, 8, stor13.length)
        if bool(stor13.length) != 1:
            revert with memory
              from ceil32(return_data.size) + 96
               len -ceil32(return_data.size) - 96
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[ceil32(return_data.size) + idx + 164] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor13.length % 128, mem[ceil32(return_data.size) + 164 len ceil32(stor13.length.field_1)]
    if arg1 and sub_284ac1b7 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_fd7ee574Address)
    call sub_fd7ee574Address.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_284ac1b7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_4ed8d840[address(msg.sender)]:
        if totalParticipants > -2:
            revert with 'NH{q', 17
        totalParticipants++
    idx = 0
    while idx < arg1:
        mem[ceil32(return_data.size) + 96] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = 7
        mem[ceil32(return_data.size) + 196] = 'PRESALE'
        require ext_code.size(nodeAddress)
        call nodeAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=7, data='PRESALE')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_cbb26769 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_cbb26769 += arg1
    if sub_4ed8d840[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_4ed8d840[address(msg.sender)] += arg1
    stor1 = 1
}



}
