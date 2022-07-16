contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_3a6123db(?) = 32, 62, 0xfe68747470733a2f2f697066732e696f2f516d506b347146366f39316b647055464178364434556b326632665a456d314136366a68626178424856573470, mem[190 len 2] >> 240, 0

const sub_96546a71(?) = 3 * 10^18

const sub_a24abce9(?) = 1

const sub_bbdf5a0d(?) = 32, 62, 0x3968747470733a2f2f697066732e696f2f516d6162666d64696271724439764d3252584b61707557354a7556563779515864524e364c444a585762464155, mem[190 len 2] >> 240, 0

const sub_c91f443c(?) = 2

const sub_f7b0f00e(?) = 10^18


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 stor4;
uint256 stor5;
uint256 sub_56beef94;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_56beef94(?) {
    return sub_56beef94
}

function paused() {
    return bool(stor4)
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9e59227b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_56beef94 = arg1
    emit 0xc404b49b: arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0, 'Pausable: paused'
    stor4 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4:
        revert with 0, 'Pausable: not paused'
    stor4 = 0
    emit Unpaused(msg.sender);
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'PuzzleGreenPass: Invalid address'
    if not eth.balance(this.address):
        revert with 0, 'PuzzleGreenPass: No balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return 32, 62, 
               0xfe68747470733a2f2f697066732e696f2f516d506b347146366f39316b647055464178364434556b326632665a456d314136366a68626178424856573470, mem[190 len 2] >> 240,
               0
    if arg1 != 2:
        return ''
    return 32, 62, 
           0x3968747470733a2f2f697066732e696f2f516d6162666d64696271724439764d3252584b61707557354a7556563779515864524e364c444a585762464155, mem[190 len 2] >> 240,
           0
}

function sub_18e7d820(?) payable {
    require calldata.size - 4 >= 32
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not arg1:
        revert with 0, 'PuzzleGreenPass: Wrong amount'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg1 != msg.value:
        revert with 0, 'PuzzleGreenPass: Invalid amount'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if stor4:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[1][address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[1][address(msg.sender)] += arg1
    emit TransferSingle(1, arg1, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 1, arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    stor5 = 1
}

function mintGold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not arg1:
        revert with 0, 'PuzzleGreenPass: Wrong amount'
    if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
        revert with 0, 17
    if 3 * 10^18 * arg1 != msg.value:
        revert with 0, 'PuzzleGreenPass: Invalid amount'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if stor4:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if balanceOf[2][address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[2][address(msg.sender)] += arg1
    emit TransferSingle(2, arg1, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 2, arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    stor5 = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
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
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if stor4:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
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

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
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
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 1)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8456cb59(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xab850a85(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9e59227b(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x8456cb59(?????):
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x96546a71(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 3 * 10^18
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor4:
                    revert with 0, 'Pausable: paused'
                stor4 = 1
                emit Paused(msg.sender);
            else:
                if unknown_0x9e59227b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_56beef94 = cd[4]
                    emit 0xc404b49b: cd[4]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xa22cb465(?????):
                        require unknown_0xa24abce9(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if msg.sender == address(cd[4]):
                        revert with 0, 'ERC1155: setting approval status for self'
                    stor2[address(msg.sender)][address(cd[4])] = uint8(bool(cd[36]))
                    emit ApprovalForAll(bool(cd[36]), msg.sender, address(cd[4]));
        else:
            if unknown_0xe985e9c5(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xab850a85(?????):
                    if unknown_0xbbdf5a0d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 32, 62, 
                               0x3968747470733a2f2f697066732e696f2f516d6162666d64696271724439764d3252584b61707557354a7556563779515864524e364c444a585762464155, mem[222 len 2] >> 240,
                               0
                    require unknown_0xc91f443c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 2
                require calldata.size - 4 >= 32
                if stor5 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor5 = 2
                if not cd[4]:
                    revert with 0, 'PuzzleGreenPass: Wrong amount'
                if cd[4] > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 0, 17
                if 3 * 10^18 * cd[4] != msg.value:
                    revert with 0, 'PuzzleGreenPass: Invalid amount'
                if not msg.sender:
                    revert with 0, 'ERC1155: mint to the zero address'
                if stor4:
                    revert with 0, 'ERC1155Pausable: token transfer while paused'
                if balanceOf[2][address(msg.sender)] > !cd[4]:
                    revert with 0, 17
                balanceOf[2][address(msg.sender)] += cd[4]
                emit TransferSingle(2, cd[4], msg.sender, 0, msg.sender);
                if ext_code.size(msg.sender):
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 2, cd[4], 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                stor5 = 1
            else:
                if unknown_0xe985e9c5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return bool(stor2[address(cd[4])][address(cd[36])])
                if uint32(call.func_hash) >> 224 != unknown_0xf242432a(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf7b0f00e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 10^18
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    if ('cd', 132).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 132).length)) + 129 < 128 or ceil32(ceil32(('cd', 132).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[132] + ('cd', 132).length + 36 <= calldata.size
                    if address(cd[4]) != msg.sender:
                        if not stor2[address(cd[4])][address(msg.sender)]:
                            revert with 0, 'ERC1155: caller is not owner nor approved'
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: transfer to the zero address'
                    if stor4:
                        revert with 0, 'ERC1155Pausable: token transfer while paused'
                    if balanceOf[cd[68]][address(cd[4])] < cd[100]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[cd[68]][address(cd[4])] -= cd[100]
                    if balanceOf[cd[68]][address(cd[36])] > !cd[100]:
                        revert with 0, 17
                    balanceOf[cd[68]][address(cd[36])] += cd[100]
                    emit TransferSingle(cd[68], cd[100], msg.sender, address(cd[4]), address(cd[36]));
                    if ext_code.size(address(cd[36])):
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[4]), cd[68], cd[100], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if unknown_0x3f4ba83a(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x56beef94(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x56beef94(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_56beef94
            if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(stor4)
            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            owner = 0
            emit OwnershipTransferred(owner, 0);
        if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not stor4:
                revert with 0, 'Pausable: not paused'
            stor4 = 0
            emit Unpaused(msg.sender);
        if uint32(call.func_hash) >> 224 != unknown_0x4e1273f4(?????):
            require unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if not address(cd[4]):
                revert with 0, 'PuzzleGreenPass: Invalid address'
            if not eth.balance(this.address):
                revert with 0, 'PuzzleGreenPass: No balance'
            call address(cd[4]) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 4).length
        require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
        s = cd[4] + 36
        t = 160
        idx = 0
        while idx < ('cd', 4).length:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
        require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
        idx = 0
        s = cd[36] + 36
        t = ceil32(32 * ('cd', 4).length) + 161
        while idx < ('cd', 36).length:
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'ERC1155: accounts and ids length mismatch'
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 4).length
        if ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if not mem[(32 * idx) + 172 len 20]:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = mem[(32 * idx) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161], 1)
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162] = balanceOf[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]][address(mem[(32 * idx) + 160])]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len 32 * ('cd', 4).length]), 
    if unknown_0x18e7d820(?????) > uint32(call.func_hash) >> 224:
        if balanceOf(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if not address(cd[4]):
                revert with 0, 'ERC1155: balance query for the zero address'
            return balanceOf[cd[36]][address(cd[4])]
        if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == Mask(32, 224, cd[4])
            if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                return True
            if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                return True
            return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
        require uri(uint256 arg1) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        if cd[4] == 1:
            return 32, 62, 
                   0xfe68747470733a2f2f697066732e696f2f516d506b347146366f39316b647055464178364434556b326632665a456d314136366a68626178424856573470, mem[222 len 2] >> 240,
                   0
        if cd[4] != 2:
            return ''
        return 32, 62, 
               0x3968747470733a2f2f697066732e696f2f516d6162666d64696271724439764d3252584b61707557354a7556563779515864524e364c444a585762464155, mem[222 len 2] >> 240,
               0
    if unknown_0x18e7d820(?????) == uint32(call.func_hash) >> 224:
        require calldata.size - 4 >= 32
        if stor5 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor5 = 2
        if not cd[4]:
            revert with 0, 'PuzzleGreenPass: Wrong amount'
        if cd[4] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * cd[4] != msg.value:
            revert with 0, 'PuzzleGreenPass: Invalid amount'
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        if stor4:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        if balanceOf[1][address(msg.sender)] > !cd[4]:
            revert with 0, 17
        balanceOf[1][address(msg.sender)] += cd[4]
        emit TransferSingle(1, cd[4], msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 1, cd[4], 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        stor5 = 1
    if uint32(call.func_hash) >> 224 != unknown_0x2eb2c2d6(?????):
        require unknown_0x3a6123db(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        return 32, 62, 
               0xfe68747470733a2f2f697066732e696f2f516d506b347146366f39316b647055464178364434556b326632665a456d314136366a68626178424856573470, mem[222 len 2] >> 240,
               0
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 129 < 128 or ceil32(32 * ('cd', 68).length) + 129 > test266151307():
        revert with 0, 65
    mem[128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 130 < 129 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 129] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 68).length) + 161
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 132).length)) + 131 < 130 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ('cd', 132).length + 162] = 0
    if msg.sender == address(cd[4]):
        if ('cd', 68).length != ('cd', 100).length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not address(cd[36]):
            revert with 0, 'ERC1155: transfer to the zero address'
        if stor4:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 100).length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 160]][address(cd[4])] < mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 160], 1)
            balanceOf[mem[(32 * idx) + 160]][address(cd[4])] -= mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]
            mem[0] = address(cd[36])
            if balanceOf[mem[(32 * idx) + 160]][address(cd[36])] > !mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 160]][address(cd[36])] += mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = 64
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 227 len 32 * ('cd', 68).length] = mem[160 len 32 * ('cd', 68).length]
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 227] = ('cd', 100).length
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 259 len 32 * ('cd', 100).length] = mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]
        emit TransferBatch(Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]), (32 * ('cd', 68).length) + 96, msg.sender, address(cd[4]), address(cd[36]));
        if not ext_code.size(address(cd[36])):
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 135] = msg.sender
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 167] = address(cd[4])
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 199] = 160
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 295] = ('cd', 68).length
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 327 len 32 * ('cd', 68).length] = mem[160 len 32 * ('cd', 68).length]
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 231] = (32 * ('cd', 68).length) + 192
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 327] = ('cd', 100).length
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 359 len 32 * ('cd', 100).length] = mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 263] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 359] = ('cd', 132).length
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 391 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            require ext_code.size(address(cd[36]))
            call address(cd[36]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(cd[4]), Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256), (32 * ('cd', 68).length) + 192, (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
            mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = ext_call.return_data[0]
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
            mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _2115 = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2123 = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_2123)] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 163 len ceil32(_2123)]
            if ceil32(_2123) <= _2123:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2123) + 32]
            mem[mem[64] + _2123 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2123) + _2115 + -mem[64] + 68
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 391] = 0
        require ext_code.size(address(cd[36]))
        call address(cd[36]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(cd[4]), Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256), (32 * ('cd', 68).length) + 192, (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = ext_call.return_data[0]
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
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
        if not ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131:
            mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2120 = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2129 = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2129)] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 163 len ceil32(_2129)]
        if ceil32(_2129) <= _2129:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2129) + 32]
        mem[mem[64] + _2129 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2129) + _2120 + -mem[64] + 68
    mem[0] = msg.sender
    if not stor2[address(cd[4])][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not address(cd[36]):
        revert with 0, 'ERC1155: transfer to the zero address'
    if stor4:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 160]][address(cd[4])] < mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 160], 1)
        balanceOf[mem[(32 * idx) + 160]][address(cd[4])] -= mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]
        mem[0] = address(cd[36])
        if balanceOf[mem[(32 * idx) + 160]][address(cd[36])] > !mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 160]][address(cd[36])] += mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 161]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = 64
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 227 len 32 * ('cd', 68).length] = mem[160 len 32 * ('cd', 68).length]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 227] = ('cd', 100).length
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 259 len 32 * ('cd', 100).length] = mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]
    emit TransferBatch(Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]), (32 * ('cd', 68).length) + 96, msg.sender, address(cd[4]), address(cd[36]));
    if not ext_code.size(address(cd[36])):
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 135] = msg.sender
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 167] = address(cd[4])
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 199] = 160
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 295] = ('cd', 68).length
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 327 len 32 * ('cd', 68).length] = mem[160 len 32 * ('cd', 68).length]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 231] = (32 * ('cd', 68).length) + 192
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 327] = ('cd', 100).length
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + 359 len 32 * ('cd', 100).length] = mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 263] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 359] = ('cd', 132).length
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 391 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        require ext_code.size(address(cd[36]))
        call address(cd[36]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(cd[4]), Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256), (32 * ('cd', 68).length) + 192, (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = ext_call.return_data[0]
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
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
        if not ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131:
            mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2117 = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2126 = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2126)] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 163 len ceil32(_2126)]
        if ceil32(_2126) <= _2126:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2126) + 32]
        mem[mem[64] + _2126 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2126) + _2117 + -mem[64] + 68
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 391] = 0
    require ext_code.size(address(cd[36]))
    call address(cd[36]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(cd[4]), Array(len=('cd', 68).length, data=mem[160 len 32 * ('cd', 68).length], ('cd', 100).length, mem[ceil32(32 * ('cd', 68).length) + 161 len 32 * ('cd', 100).length], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 27) + 256), (32 * ('cd', 68).length) + 192, (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131] = ext_call.return_data[0]
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
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
    if not ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131:
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _2122 = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2131 = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
    mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 131]
    mem[mem[64] + 68 len ceil32(_2131)] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + ext_call.return_data[0] + 163 len ceil32(_2131)]
    if ceil32(_2131) <= _2131:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2131) + 32]
    mem[mem[64] + _2131 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_2131) + _2122 + -mem[64] + 68
}



}
