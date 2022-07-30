contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address stakeContractAddress;
uint256 sub_94953bb9;
uint256 sub_919f71f7;
mapping of uint256 sub_c903eacc;
mapping of uint256 sub_584707a6;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function stakeContract() payable {
    return stakeContractAddress
}

function sub_584707a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_584707a6[arg1]
}

function sub_919f71f7(?) payable {
    return sub_919f71f7
}

function sub_94953bb9(?) payable {
    return sub_94953bb9
}

function sub_c903eacc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c903eacc[arg1]
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
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getVaults(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakeContractAddress)
    staticcall stakeContractAddress.0x61672539 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
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

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if floor32(arg2.length) + 98 < 97 or floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function sub_46654b48(?) payable {
    if 1 <= sub_584707a6[msg.sender]:
        revert with 0, 'Can only mint 1 grandmaster keys'
    require ext_code.size(stakeContractAddress)
    staticcall stakeContractAddress.0x61672539 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 100:
        revert with 0, 'cant'
    if sub_584707a6[msg.sender] == -1:
        revert with 0, 17
    sub_584707a6[msg.sender]++
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[2][address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[2][address(msg.sender)]++
    emit TransferSingle(2, 1, msg.sender, 0, msg.sender);
    if not ext_code.size(msg.sender):
        if sub_919f71f7 == -1:
            revert with 0, 17
        sub_919f71f7++
    mem[ceil32(return_data.size) + 260] = msg.sender
    mem[ceil32(return_data.size) + 292] = 0
    mem[ceil32(return_data.size) + 324] = 2
    mem[ceil32(return_data.size) + 356] = 1
    mem[ceil32(return_data.size) + 388] = 160
    mem[ceil32(return_data.size) + 420] = 0
    mem[ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 2, 1, 160, 0
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        if sub_919f71f7 == -1:
            revert with 0, 17
        sub_919f71f7++
    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 260] = 32
    mem[(2 * ceil32(return_data.size)) + 292] = 40
    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
    mem[(2 * ceil32(return_data.size)) + 356] = 'd tokens' << 192
    revert with memory
      from (2 * ceil32(return_data.size)) + 256
       len ceil32(return_data.size) + 132
}

function sub_5ed7207c(?) payable {
    if sub_c903eacc[msg.sender] == -1:
        revert with 0, 17
    sub_c903eacc[msg.sender]++
    if 10 < sub_c903eacc[msg.sender]:
        revert with 0, 'Can mint up to 10 master keys'
    if sub_c903eacc[msg.sender] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    require ext_code.size(stakeContractAddress)
    staticcall stakeContractAddress.0x61672539 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10 * sub_c903eacc[msg.sender]:
        revert with 0, 'cant'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[1][address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[1][address(msg.sender)]++
    emit TransferSingle(1, 1, msg.sender, 0, msg.sender);
    if not ext_code.size(msg.sender):
        if sub_94953bb9 == -1:
            revert with 0, 17
        sub_94953bb9++
    mem[ceil32(return_data.size) + 260] = msg.sender
    mem[ceil32(return_data.size) + 292] = 0
    mem[ceil32(return_data.size) + 324] = 1
    mem[ceil32(return_data.size) + 356] = 1
    mem[ceil32(return_data.size) + 388] = 160
    mem[ceil32(return_data.size) + 420] = 0
    mem[ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 1, 1, 160, 0
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        if sub_94953bb9 == -1:
            revert with 0, 17
        sub_94953bb9++
    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 260] = 32
    mem[(2 * ceil32(return_data.size)) + 292] = 40
    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
    mem[(2 * ceil32(return_data.size)) + 356] = 'd tokens' << 192
    revert with memory
      from (2 * ceil32(return_data.size)) + 256
       len ceil32(return_data.size) + 132
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if floor32(arg3.length) + 97 < 96 or floor32(arg3.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if floor32(arg4.length) + 98 < 97 or floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(arg3.length) + 97] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg1 == msg.sender:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + floor32(arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + floor32(arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1285 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1299 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1299)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1299)]
            if ceil32(_1299) <= _1299:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1299) + 32]
            mem[mem[64] + _1299 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1299) + _1285 + -mem[64] + 68
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1294 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1305 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1305)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1305)]
        if ceil32(_1305) <= _1305:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1305) + 32]
        mem[mem[64] + _1305 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1305) + _1294 + -mem[64] + 68
    mem[0] = msg.sender
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg4.length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
        mem[0] = arg2
        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + floor32(arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    var71001 = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1289 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1302 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1302)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1302)]
        if ceil32(_1302) <= _1302:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1302) + 32]
        mem[mem[64] + _1302 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1302) + _1289 + -mem[64] + 68
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1297 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1307 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1307)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1307)]
    if ceil32(_1307) <= _1307:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1307) + 32]
    mem[mem[64] + _1307 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1307) + _1297 + -mem[64] + 68
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        mem[96] = stor2.length.field_1
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if not stor2.length.field_1:
                if not arg1:
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor2.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                            _3527 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3527)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3527)]
                            if ceil32(_3527) > _3527:
                                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3527 + 260] = 0
                            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3527) + 32], 
                        _3567 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3567)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3567)]
                        if ceil32(_3567) > _3567:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3567 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3567) + 32], 
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3528 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3528)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3528)]
                        if ceil32(_3528) > _3528:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3528 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3528) + 32], 
                    _3568 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3568)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3568)]
                    if ceil32(_3568) > _3568:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3568 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3568) + 32], 
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3529 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3529)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3529)]
                        if ceil32(_3529) > _3529:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3529 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3529) + 32], 
                    _3569 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3569)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3569)]
                    if ceil32(_3569) > _3569:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3569 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3569) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3530 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3530)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3530)]
                    if ceil32(_3530) > _3530:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3530 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3530) + 32], 
                _3570 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3570)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3570)]
                if ceil32(_3570) > _3570:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3570 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3570) + 32], 
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not arg1:
                    mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor2.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                            _4255 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4255)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4255)]
                            if ceil32(_4255) > _4255:
                                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4255 + 260] = 0
                            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4255) + 32], 
                        _4271 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4271)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4271)]
                        if ceil32(_4271) > _4271:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4271 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4271) + 32], 
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _4256 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4256)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4256)]
                        if ceil32(_4256) > _4256:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4256 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4256) + 32], 
                    _4272 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4272)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4272)]
                    if ceil32(_4272) > _4272:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4272 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4272) + 32], 
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _4257 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4257)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4257)]
                        if ceil32(_4257) > _4257:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4257 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4257) + 32], 
                    _4273 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4273)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4273)]
                    if ceil32(_4273) > _4273:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4273 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4273) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _4258 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4258)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4258)]
                    if ceil32(_4258) > _4258:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4258 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4258) + 32], 
                _4274 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4274)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4274)]
                if ceil32(_4274) > _4274:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4274 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4274) + 32], 
            mem[128] = 256 * stor2.length.field_8
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3533 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3533)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3533)]
                        if ceil32(_3533) > _3533:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3533 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3533) + 32], 
                    _3571 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3571)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3571)]
                    if ceil32(_3571) > _3571:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3571 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3571) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3534 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3534)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3534)]
                    if ceil32(_3534) > _3534:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3534 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3534) + 32], 
                _3572 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3572)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3572)]
                if ceil32(_3572) > _3572:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3572 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3572) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3535 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3535)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3535)]
                    if ceil32(_3535) > _3535:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3535 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3535) + 32], 
                _3573 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3573)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3573)]
                if ceil32(_3573) > _3573:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3573 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3573) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3536 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3536)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3536)]
                if ceil32(_3536) > _3536:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3536 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3536) + 32], 
            _3574 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3574)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3574)]
            if ceil32(_3574) > _3574:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3574 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3574) + 32], 
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if not stor2.length.field_1:
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3537 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3537)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3537)]
                        if ceil32(_3537) > _3537:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3537 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3537) + 32], 
                    _3575 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3575)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3575)]
                    if ceil32(_3575) > _3575:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3575 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3575) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3538 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3538)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3538)]
                    if ceil32(_3538) > _3538:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3538 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3538) + 32], 
                _3576 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3576)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3576)]
                if ceil32(_3576) > _3576:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3576 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3576) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3539 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3539)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3539)]
                    if ceil32(_3539) > _3539:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3539 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3539) + 32], 
                _3577 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3577)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3577)]
                if ceil32(_3577) > _3577:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3577 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3577) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3540 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3540)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3540)]
                if ceil32(_3540) > _3540:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3540 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3540) + 32], 
            _3578 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3578)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3578)]
            if ceil32(_3578) > _3578:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3578 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3578) + 32], 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3543 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3543)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3543)]
                        if ceil32(_3543) > _3543:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3543 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3543) + 32], 
                    _3579 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3579)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3579)]
                    if ceil32(_3579) > _3579:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3579 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3579) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3544 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3544)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3544)]
                    if ceil32(_3544) > _3544:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3544 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3544) + 32], 
                _3580 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3580)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3580)]
                if ceil32(_3580) > _3580:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3580 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3580) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3545 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3545)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3545)]
                    if ceil32(_3545) > _3545:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3545 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3545) + 32], 
                _3581 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3581)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3581)]
                if ceil32(_3581) > _3581:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3581 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3581) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3546 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3546)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3546)]
                if ceil32(_3546) > _3546:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3546 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3546) + 32], 
            _3582 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3582)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3582)]
            if ceil32(_3582) > _3582:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3582 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3582) + 32], 
        mem[0] = 2
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while stor2.length.field_1 + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _4259 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4259)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4259)]
                    if ceil32(_4259) > _4259:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4259 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4259) + 32], 
                _4275 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4275)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4275)]
                if ceil32(_4275) > _4275:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4275 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4275) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4260 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4260)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4260)]
                if ceil32(_4260) > _4260:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4260 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4260) + 32], 
            _4276 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4276)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4276)]
            if ceil32(_4276) > _4276:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4276 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4276) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4261 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4261)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4261)]
                if ceil32(_4261) > _4261:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4261 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4261) + 32], 
            _4277 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4277)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4277)]
            if ceil32(_4277) > _4277:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4277 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4277) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4262 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4262)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4262)]
            if ceil32(_4262) > _4262:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4262 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4262) + 32], 
        _4278 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4278)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4278)]
        if ceil32(_4278) > _4278:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4278 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4278) + 32], 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if not stor2.length.field_1:
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3547 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3547)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3547)]
                        if ceil32(_3547) > _3547:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3547 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3547) + 32], 
                    _3583 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3583)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3583)]
                    if ceil32(_3583) > _3583:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3583 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3583) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3548 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3548)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3548)]
                    if ceil32(_3548) > _3548:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3548 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3548) + 32], 
                _3584 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3584)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3584)]
                if ceil32(_3584) > _3584:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3584 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3584) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3549 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3549)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3549)]
                    if ceil32(_3549) > _3549:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3549 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3549) + 32], 
                _3585 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3585)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3585)]
                if ceil32(_3585) > _3585:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3585 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3585) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3550 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3550)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3550)]
                if ceil32(_3550) > _3550:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3550 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3550) + 32], 
            _3586 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3586)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3586)]
            if ceil32(_3586) > _3586:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3586 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3586) + 32], 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3553 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3553)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3553)]
                        if ceil32(_3553) > _3553:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3553 + 260] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3553) + 32], 
                    _3587 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3587)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3587)]
                    if ceil32(_3587) > _3587:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3587 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3587) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3554 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3554)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3554)]
                    if ceil32(_3554) > _3554:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3554 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3554) + 32], 
                _3588 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3588)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3588)]
                if ceil32(_3588) > _3588:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3588 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3588) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3555 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3555)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3555)]
                    if ceil32(_3555) > _3555:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3555 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3555) + 32], 
                _3589 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3589)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3589)]
                if ceil32(_3589) > _3589:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3589 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3589) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3556 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3556)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3556)]
                if ceil32(_3556) > _3556:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3556 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3556) + 32], 
            _3590 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3590)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3590)]
            if ceil32(_3590) > _3590:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3590 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3590) + 32], 
        mem[0] = 2
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while stor2.length.field_1 + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _4263 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4263)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4263)]
                    if ceil32(_4263) > _4263:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4263 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4263) + 32], 
                _4279 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4279)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4279)]
                if ceil32(_4279) > _4279:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4279 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4279) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4264 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4264)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4264)]
                if ceil32(_4264) > _4264:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4264 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4264) + 32], 
            _4280 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4280)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4280)]
            if ceil32(_4280) > _4280:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4280 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4280) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4265 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4265)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4265)]
                if ceil32(_4265) > _4265:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4265 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4265) + 32], 
            _4281 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4281)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4281)]
            if ceil32(_4281) > _4281:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4281 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4281) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4266 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4266)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4266)]
            if ceil32(_4266) > _4266:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4266 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4266) + 32], 
        _4282 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4282)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4282)]
        if ceil32(_4282) > _4282:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4282 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4282) + 32], 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if not stor2.length.field_1:
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3557 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3557)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3557)]
                    if ceil32(_3557) > _3557:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3557 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3557) + 32], 
                _3591 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3591)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3591)]
                if ceil32(_3591) > _3591:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3591 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3591) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3558 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3558)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3558)]
                if ceil32(_3558) > _3558:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3558 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3558) + 32], 
            _3592 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3592)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3592)]
            if ceil32(_3592) > _3592:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3592 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3592) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3559 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3559)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3559)]
                if ceil32(_3559) > _3559:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3559 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3559) + 32], 
            _3593 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3593)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3593)]
            if ceil32(_3593) > _3593:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3593 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3593) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3560 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3560)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3560)]
            if ceil32(_3560) > _3560:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3560 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3560) + 32], 
        _3594 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3594)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3594)]
        if ceil32(_3594) > _3594:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3594 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3594) + 32], 
    if 31 >= stor2.length.field_1:
        mem[128] = 256 * stor2.length.field_8
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3563 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3563)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3563)]
                    if ceil32(_3563) > _3563:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3563 + 260] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3563) + 32], 
                _3595 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3595)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3595)]
                if ceil32(_3595) > _3595:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3595 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3595) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3564 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3564)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3564)]
                if ceil32(_3564) > _3564:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3564 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3564) + 32], 
            _3596 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3596)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3596)]
            if ceil32(_3596) > _3596:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3596 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3596) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3565 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3565)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3565)]
                if ceil32(_3565) > _3565:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3565 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3565) + 32], 
            _3597 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3597)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3597)]
            if ceil32(_3597) > _3597:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3597 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3597) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3566 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3566)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3566)]
            if ceil32(_3566) > _3566:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3566 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3566) + 32], 
        _3598 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_3598)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3598)]
        if ceil32(_3598) > _3598:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3598 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_3598) + 32], 
    mem[0] = 2
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while stor2.length.field_1 + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 229] = 32
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261] = mem[ceil32(stor2.length.field_1) + 192]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 293 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 293] = 0
        return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 261 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor2.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4267 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4267)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4267)]
                if ceil32(_4267) > _4267:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4267 + 260] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4267) + 32], 
            _4283 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4283)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4283)]
            if ceil32(_4283) > _4283:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4283 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4283) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4268 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4268)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4268)]
            if ceil32(_4268) > _4268:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4268 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4268) + 32], 
        _4284 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4284)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4284)]
        if ceil32(_4284) > _4284:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4284 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4284) + 32], 
    mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4269 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4269)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4269)]
            if ceil32(_4269) > _4269:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4269 + 260] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4269) + 32], 
        _4285 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4285)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4285)]
        if ceil32(_4285) > _4285:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4285 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4285) + 32], 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 0x2e6a706700000000000000000000000000000000000000000000000000000000
    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 196] = 32
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
        _4270 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4270)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4270)]
        if ceil32(_4270) > _4270:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4270 + 260] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4270) + 32], 
    _4286 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 260 len ceil32(_4286)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4286)]
    if ceil32(_4286) > _4286:
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4286 + 260] = 0
    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 228 len ceil32(_4286) + 32], 
}



}
