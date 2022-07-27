contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
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
    if not msg.sender - arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit TransferSingle(arg1, arg2, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, 2, 0, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function mintTo(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        call arg1.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 2, 0, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
        call arg2.0xf23a6e61 with:
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
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
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 37
    mem[128 len 37] = 0xfe68747470733a2f2f6d6565626974732e6c617276616c6162732e636f6d2f6d6565626974
    if not -arg1:
        mem[288 len 64] = 0xfe68747470733a2f2f6d6565626974732e6c617276616c6162732e636f6d2f6d6565626974, mem[165 len 27]
        mem[325] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[326] = 32
        mem[358] = mem[256]
        mem[390 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
        if ceil32(mem[256]) > mem[256]:
            mem[mem[256] + 390] = 0
        return Array(len=mem[256], data=mem[390 len ceil32(mem[256])])
    s = 0
    idx = arg1
    while idx:
        if not s + 1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[192]:
                revert with 0, 50
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _172 = mem[64]
        _174 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _266 = mem[192]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_266) <= _266:
                _334 = mem[64]
                mem[64] = _266 + _172 + _174 + 32
                mem[_266 + _172 + _174 + 32] = 32
                _350 = mem[_334]
                mem[_266 + _172 + _174 + 64] = mem[_334]
                mem[_266 + _172 + _174 + 96 len ceil32(_350)] = mem[_334 + 32 len ceil32(_350)]
                if ceil32(_350) > _350:
                    mem[_266 + _172 + _174 + _350 + 96] = 0
                return 32, mem[_266 + _172 + _174 + 64 len ceil32(_350) + 32]
            mem[_172 + _174 + _266 + 32] = 0
            _338 = mem[64]
            mem[64] = _266 + _172 + _174 + 32
            mem[_266 + _172 + _174 + 32] = 32
            _354 = mem[_338]
            mem[_266 + _172 + _174 + 64] = mem[_338]
            mem[_266 + _172 + _174 + 96 len ceil32(_354)] = mem[_338 + 32 len ceil32(_354)]
            if ceil32(_354) > _354:
                mem[_266 + _172 + _174 + _354 + 96] = 0
            return 32, mem[_266 + _172 + _174 + 64 len ceil32(_354) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _268 = mem[192]
        mem[_172 + _174 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_268) <= _268:
            _335 = mem[64]
            mem[64] = _268 + _172 + _174 + 32
            mem[_268 + _172 + _174 + 32] = 32
            _351 = mem[_335]
            mem[_268 + _172 + _174 + 64] = mem[_335]
            mem[_268 + _172 + _174 + 96 len ceil32(_351)] = mem[_335 + 32 len ceil32(_351)]
            if ceil32(_351) > _351:
                mem[_268 + _172 + _174 + _351 + 96] = 0
            return 32, mem[_268 + _172 + _174 + 64 len ceil32(_351) + 32]
        mem[_172 + _174 + _268 + 32] = 0
        _339 = mem[64]
        mem[64] = _268 + _172 + _174 + 32
        mem[_268 + _172 + _174 + 32] = 32
        _355 = mem[_339]
        mem[_268 + _172 + _174 + 64] = mem[_339]
        mem[_268 + _172 + _174 + 96 len ceil32(_355)] = mem[_339 + 32 len ceil32(_355)]
        if ceil32(_355) > _355:
            mem[_268 + _172 + _174 + _355 + 96] = 0
        return 32, mem[_268 + _172 + _174 + 64 len ceil32(_355) + 32]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[192]:
            revert with 0, 50
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _173 = mem[64]
    _175 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _267 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_267) <= _267:
            _336 = mem[64]
            mem[64] = _267 + _173 + _175 + 32
            mem[_267 + _173 + _175 + 32] = 32
            _352 = mem[_336]
            mem[_267 + _173 + _175 + 64] = mem[_336]
            mem[_267 + _173 + _175 + 96 len ceil32(_352)] = mem[_336 + 32 len ceil32(_352)]
            if ceil32(_352) > _352:
                mem[_267 + _173 + _175 + _352 + 96] = 0
            return 32, mem[_267 + _173 + _175 + 64 len ceil32(_352) + 32]
        mem[_173 + _175 + _267 + 32] = 0
        _340 = mem[64]
        mem[64] = _267 + _173 + _175 + 32
        mem[_267 + _173 + _175 + 32] = 32
        _356 = mem[_340]
        mem[_267 + _173 + _175 + 64] = mem[_340]
        mem[_267 + _173 + _175 + 96 len ceil32(_356)] = mem[_340 + 32 len ceil32(_356)]
        if ceil32(_356) > _356:
            mem[_267 + _173 + _175 + _356 + 96] = 0
        return 32, mem[_267 + _173 + _175 + 64 len ceil32(_356) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _269 = mem[192]
    mem[_173 + _175 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    if ceil32(_269) <= _269:
        _337 = mem[64]
        mem[64] = _269 + _173 + _175 + 32
        mem[_269 + _173 + _175 + 32] = 32
        _353 = mem[_337]
        mem[_269 + _173 + _175 + 64] = mem[_337]
        mem[_269 + _173 + _175 + 96 len ceil32(_353)] = mem[_337 + 32 len ceil32(_353)]
        if ceil32(_353) > _353:
            mem[_269 + _173 + _175 + _353 + 96] = 0
        return 32, mem[_269 + _173 + _175 + 64 len ceil32(_353) + 32]
    mem[_173 + _175 + _269 + 32] = 0
    _341 = mem[64]
    mem[64] = _269 + _173 + _175 + 32
    mem[_269 + _173 + _175 + 32] = 32
    _357 = mem[_341]
    mem[_269 + _173 + _175 + 64] = mem[_341]
    mem[_269 + _173 + _175 + 96 len ceil32(_357)] = mem[_341 + 32 len ceil32(_357)]
    if ceil32(_357) > _357:
        mem[_269 + _173 + _175 + _357 + 96] = 0
    return 32, mem[_269 + _173 + _175 + 64 len ceil32(_357) + 32]
}

function batchMint(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = ceil32(32 * arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 2
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = 0x3078000000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 258 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 258] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 290 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 166] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 198] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 230] = 160
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 326] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 358 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 262] = (32 * arg2.length) + 192
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 358] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 390 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 294] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390] = 2
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 422] = 0x3078000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 424] = 0
    call arg1.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], 2, 0, 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 162] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if -(uint32(mem[4 len 28]) >> 224) + Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 162 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163 < 162 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163
    if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162:
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _626 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _630 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162]
    mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 162]
    mem[mem[64] + 68 len ceil32(_630)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ext_call.return_data[0] + 194 len ceil32(_630)]
    if ceil32(_630) <= _630:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_630) + 32]
    mem[mem[64] + _630 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_630) + _626 + -mem[64] + 68
}



}
