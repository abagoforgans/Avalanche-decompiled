contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const maxSupply = 1111


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
uint8 stor3;
address owner;
uint256 stor6;
address stor7;
address stor8;
mapping of uint256 mintTimestamp;
mapping of uint256 holdTimestamp;
mapping of uint256 balanceOf;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function holdTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return holdTimestamp[arg1]
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function mintTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintTimestamp[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_a7e1dfb1(?) {
    return (stor6 == 1110)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    stor7 = stor8
}

function sub_7e64cd93(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return (balanceOf[arg2][address(arg1)] == 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Wonko: No balance to withdraw'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function tokensOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < 1111:
        if not arg1:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = arg1
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] != 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_be51d077(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor8 != msg.sender:
        revert with 0, 'Wonko: FORBIDDEN'
    if stor6 == 1110:
        revert with 0, 'Wonko: Cannot mint more'
    if not address(arg1):
        revert with 0, 'ERC1155: mint to the zero address'
    mem[160] = stor6
    mem[192] = 1
    mem[224] = 1
    idx = 0
    while uint8(idx) < 1:
        if this.address != 0:
            if address(arg1) != this.address:
                if uint8(idx) >= 1:
                    revert with 'NH{q', 50
                holdTimestamp[mem[(32 * uint8(idx)) + 160]] = block.timestamp
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        mem[0] = 0
        mem[32] = 11
        if balanceOf[0]:
            if balanceOf[0] < 1:
                revert with 'NH{q', 17
            mem[0] = 0
            mem[32] = 11
            balanceOf[0]--
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    if balanceOf[stor6][address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[stor6][address(arg1)]++
    emit TransferSingle(stor6, 1, msg.sender, 0, address(arg1));
    if ext_code.size(address(arg1)) > 0:
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, stor6, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    mintTimestamp[stor6] = block.timestamp
    holdTimestamp[stor6] = block.timestamp
    stor6++
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    idx = 0
    while uint8(idx) < 1:
        if arg1 != this.address:
            if arg2 != this.address:
                if uint8(idx) >= 1:
                    revert with 'NH{q', 50
                holdTimestamp[mem[(32 * uint8(idx)) + ceil32(ceil32(arg5.length)) + 129]] = block.timestamp
        if balanceOf[address(arg2)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg2)]++
        mem[0] = arg1
        mem[32] = 11
        if balanceOf[address(arg1)]:
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 11
            balanceOf[address(arg1)]--
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function mintMultiple(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Wonko: Must mint at least 1'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if 10^18 * arg1 != msg.value:
        revert with 0, 'Wonko: Wrong value'
    if arg1 > 30:
        revert with 0, 'Wonko: Exceeds max per mint'
    if stor6 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor6 + arg1 > 1111:
        revert with 0, 'Wonko: Cannot mint that much'
    idx = 0
    while uint8(idx) < arg1:
        _104 = mem[64]
        mem[64] = mem[64] + 32
        mem[_104] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        _106 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_106]:
            revert with 'NH{q', 50
        mem[_106 + 32] = stor6
        mem[_106 + 64] = 1
        mem[64] = _106 + 128
        mem[_106 + 96] = 1
        _111 = mem[_106]
        s = 0
        while uint8(s) < _111:
            if this.address != 0:
                if this.address != msg.sender:
                    if uint8(s) >= mem[_106]:
                        revert with 'NH{q', 50
                    holdTimestamp[mem[(32 * uint8(s)) + _106 + 32]] = block.timestamp
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = 0
            mem[32] = 11
            if balanceOf[0]:
                if balanceOf[0] < 1:
                    revert with 'NH{q', 17
                mem[0] = 0
                mem[32] = 11
                balanceOf[0]--
            if uint8(s) == 255:
                revert with 'NH{q', 17
            s = uint8(s) + 1
            continue 
        mem[0] = msg.sender
        mem[32] = sha3(stor6, 0)
        if balanceOf[stor6][address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[stor6][address(msg.sender)]++
        mem[_106 + 128] = stor6
        mem[_106 + 160] = 1
        emit TransferSingle(stor6, 1, msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender) > 0:
            mem[_106 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[_106 + 132] = msg.sender
            mem[_106 + 164] = 0
            mem[_106 + 196] = stor6
            mem[_106 + 228] = 1
            mem[_106 + 260] = 160
            _224 = mem[_104]
            mem[_106 + 292] = mem[_104]
            s = 0
            while s < _224:
                mem[_106 + s + 324] = mem[_104 + s + 32]
                s = s + 32
                continue 
            if ceil32(_224) > _224:
                mem[_106 + _224 + 324] = 0
            require ext_code.size(msg.sender)
            call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor6, 1, 160, mem[_106 + 292 len ceil32(_224) + 32]
            mem[_106 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = _106 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mintTimestamp[stor6] = block.timestamp
        mem[0] = stor6
        mem[32] = 10
        holdTimestamp[stor6] = block.timestamp
        stor6++
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}



}
