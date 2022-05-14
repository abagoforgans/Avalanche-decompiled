contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of address creators;
mapping of struct royalties;
mapping of struct stor4;
uint256 nonce;
address managerAddress;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[arg2][address(arg1)]
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and royalties[arg1].field_256 > -1 / arg2:
        revert with 'NH{q', 17
    return royalties[arg1].field_0, arg2 * royalties[arg1].field_256 / 10000
}

function manager() payable {
    return managerAddress
}

function royalties(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return royalties[arg1].field_0, royalties[arg1].field_256
}

function nonce() payable {
    return nonce
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creators[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, '_to must be non-zero.'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 'NH{q', 1
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 > -balanceOf[arg3][address(arg2)] - 1:
        revert with 'NH{q', 17
    if arg4 + balanceOf[arg3][address(arg2)] < arg4:
        revert with 'NH{q', 1
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    s = 0
    s = 128
    t = mem[64] + 64
    while arg1.length < arg1.length:
        mem[t] = mem[s]
        s = arg1.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function mint(uint256 arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg2 >= 0
    require arg2 <= 2500
    require arg1 > 0
    require arg1 <= 10000
    require arg3.length > 0
    require msg.sender == managerAddress
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    creators[stor5 + 1] = msg.sender
    balanceOf[stor5 + 1][address(msg.sender)] = arg1
    royalties[stor5 + 1].field_0 = msg.sender
    royalties[stor5 + 1].field_256 = arg2
    emit TransferSingle(nonce + 1, arg1, msg.sender, 0, msg.sender);
    emit 0xebf535ca: Array(len=arg3.length, data=arg3[all]), block.timestamp, arg2, nonce + 1
    if stor4[stor5 + 1].field_0:
        if stor4[stor5 + 1].field_0 == stor4[stor5 + 1].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor4[stor5 + 1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor5 + 1].field_0 = 0
            idx = 0
            while stor4[stor5 + 1].field_1 + 31 / 32 > idx:
                stor4[stor5 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor5 + 1].field_0 == stor4[stor5 + 1].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor4[stor5 + 1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor5 + 1].field_0 = 0
            idx = 0
            while stor4[stor5 + 1].field_1 + 31 / 32 > idx:
                stor4[stor5 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit URI(Array(len=arg3.length, data=arg3[all]), nonce + 1);
    return (nonce + 1)
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'destination address must be non-zero.'
    if arg3.length != arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_ids and _values array length must match.'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + arg4 + 36)] > balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]:
            revert with 'NH{q', 1
        if balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] < cd[((32 * idx) + arg4 + 36)]:
            revert with 'NH{q', 17
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
        if cd[((32 * idx) + arg4 + 36)] > -balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] - 1:
            revert with 'NH{q', 17
        if cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] < cd[((32 * idx) + arg4 + 36)]:
            revert with 'NH{q', 1
        mem[0] = arg2
        mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 0)
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
        if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
            mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}



}
