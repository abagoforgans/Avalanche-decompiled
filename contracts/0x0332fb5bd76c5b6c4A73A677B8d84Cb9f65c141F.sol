contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, uint256 arg3)
#  - mint(uint256 arg1, uint256 arg2)
#  - recover(address arg1, uint256 arg2)
#  - burn(uint256 arg1, uint256 arg2)
#  - _fallback()
#
mapping of uint256 balanceOf;
mapping of uint8 stor102;
array of struct stor103;
address governorAddress;
uint256 stor201;
address pendingGovernorAddress;
address chefAddress;
address joeAddress;
uint256 sub_797a6514;
address workerAddress;
uint256 sub_363b0485;
address underlyingTokenAddress;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function governor() {
    return address(governorAddress)
}

function chef() {
    return chefAddress
}

function sub_363b0485(?) {
    return sub_363b0485
}

function worker() {
    return workerAddress
}

function lpToken() {
    return underlyingTokenAddress
}

function sub_797a6514(?) {
    return sub_797a6514
}

function getUnderlyingToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return underlyingTokenAddress
}

function joe() {
    return joeAddress
}

function pendingGovernor() {
    return pendingGovernorAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor102[address(arg1)][address(arg2)])
}

function getUnderlyingRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0x10000000000000000000000000000
}

function decodeId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return Mask(256, -240, arg1) << 240, Mask(240, 0, arg1)
}

function setWorker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    workerAddress = arg1
    emit SetWorker(arg1);
}

function acceptGovernor() {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    uint256(stor201) = msg.sender or Mask(96, 160, uint256(stor201))
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function encodeId(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 65536:
        revert with 0, 'bad pid'
    if arg2 >= 0x1000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'bad joe per share'
    return arg1
}

function recoverETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1a7b2077: arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor102[msg.sender][address(arg1)] = uint8(arg2)
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
        if not stor102[address(arg1)][address(msg.sender)]:
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
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 101)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor103.length):
            if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor103.length):
                if 31 < uint255(stor103.length) * 0.5:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor103.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        else:
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 0, 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        mem[ceil32(uint255(stor103.length) * 0.5) + 192 len ceil32(uint255(stor103.length) * 0.5)] = mem[128 len ceil32(uint255(stor103.length) * 0.5)]
        if ceil32(uint255(stor103.length) * 0.5) > uint255(stor103.length) * 0.5:
            mem[(uint255(stor103.length) * 0.5) + ceil32(uint255(stor103.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)], mem[(2 * ceil32(uint255(stor103.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor103.length) * 0.5)]), 
    if bool(stor103.length) == stor103.length.field_1 < 32:
        revert with 0, 34
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor103.length):
            if 31 < uint255(stor103.length) * 0.5:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while (uint255(stor103.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 0, 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
    if ceil32(stor103.length.field_1) > stor103.length.field_1:
        mem[stor103.length.field_1 + ceil32(stor103.length.field_1) + 192] = 0
    return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
}

function sub_2b8820d8(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    if workerAddress != msg.sender:
        revert with 0, '!worker'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if cd[(cd[36] + ('cd', 36)[1] + 4)] < 1:
        revert with 0, 17
    if cd[(cd[36] + ('cd', 36)[1] + 4)] - 1 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)] == address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)])
    if address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)]) != joeAddress:
        revert with 0, '!joe'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if cd[(cd[36] + ('cd', 36)[1] + 4)] != 2:
        revert with 0, '!length'
    mem[100] = this.address
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    mem[ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ('cd', 36)[0]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    idx = 0
    s = cd[36] + ('cd', 36)[1] + 36
    t = ceil32(return_data.size) + 260
    while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ('cd', 36)[2]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value ('cd', 36).length wei
         gas gas_remaining wei
        args ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[ceil32(return_data.size) + 260 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _29 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 127
    _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36)[0]) >> 32 + 96]
    require return_data.size >= _29 + (32 * _30) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _30] = mem[ceil32(return_data.size) + _29 + 128 len 32 * _30]
    mem[mem[64] + 4] = this.address
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_45]
    mem[mem[64] + 36] = this.address
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_363b0485, this.address
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _49 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    if mem[_49]:
        if _46 < ext_call.return_data[0]:
            revert with 0, 17
        if _46 - ext_call.return_data[0] and 10^18 > -1 / _46 - ext_call.return_data[0]:
            revert with 0, 17
        if not mem[_49]:
            revert with 0, 18
        if sub_797a6514 > !((10^18 * _46) - (10^18 * ext_call.return_data[0]) / mem[_49]):
            revert with 0, 17
        sub_797a6514 += (10^18 * _46) - (10^18 * ext_call.return_data[0]) / mem[_49]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
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
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
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
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len arg5.length] = arg5[all]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + arg5.length + 130] = 0
    if msg.sender == arg1:
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
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 101)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1293 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1301 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1301)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1301)]
            if ceil32(_1301) <= _1301:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1301) + 32]
            mem[_1301 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1301) + _1293 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1294 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1303 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1303)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1303)]
        if ceil32(_1303) <= _1303:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1303) + 32]
        mem[_1303 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1303) + _1294 + -mem[64] + 68
    mem[0] = msg.sender
    if not stor102[address(arg1)][address(msg.sender)]:
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
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 128], 101)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        mem[0] = arg2
        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1295 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1305 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1305)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1305)]
        if ceil32(_1305) <= _1305:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1305) + 32]
        mem[_1305 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1305) + _1295 + -mem[64] + 68
    mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
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
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1296 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1307 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1307)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1307)]
    if ceil32(_1307) <= _1307:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1307) + 32]
    mem[_1307 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1307) + _1296 + -mem[64] + 68
}

function sub_2ebafe83(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    if workerAddress != msg.sender:
        revert with 0, '!worker'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if cd[(cd[36] + ('cd', 36)[1] + 4)] < 1:
        revert with 0, 17
    if cd[(cd[36] + ('cd', 36)[1] + 4)] - 1 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)] == address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)])
    if address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)]) != joeAddress:
        revert with 0, '!joe'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if 0 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[(cd[36] + ('cd', 36)[1] + 36)] == address(cd[(cd[36] + ('cd', 36)[1] + 36)])
    if address(cd[(cd[36] + ('cd', 36)[1] + 36)]) == underlyingTokenAddress:
        revert with 0, 'path0 must not be lpToken'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if 0 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[(cd[36] + ('cd', 36)[1] + 36)] == address(cd[(cd[36] + ('cd', 36)[1] + 36)])
    mem[100] = this.address
    mem[132] = address(cd[4])
    require ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)]))
    staticcall address(cd[(cd[36] + ('cd', 36)[1] + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    if ext_call.return_data[0]:
        require ext_code.size(joeAddress)
        staticcall joeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ('cd', 36)[1] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = ('cd', 36).length
        mem[(2 * ceil32(return_data.size)) + 132] = ('cd', 36)[0]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = cd[(cd[36] + ('cd', 36)[1] + 4)]
        idx = 0
        s = cd[36] + ('cd', 36)[1] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = ('cd', 36)[2]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _267 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 127
        _272 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]
        require return_data.size >= _267 + (32 * _272) + 32
        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _272] = mem[(2 * ceil32(return_data.size)) + _267 + 128 len 32 * _272]
        mem[mem[64] + 4] = this.address
        require ext_code.size(joeAddress)
        staticcall joeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _503 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _520 = mem[_503]
        mem[mem[64] + 36] = this.address
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_363b0485, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _531 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if mem[_531]:
            if _520 < ext_call.return_data[0]:
                revert with 0, 17
            if _520 - ext_call.return_data[0] and 10^18 > -1 / _520 - ext_call.return_data[0]:
                revert with 0, 17
            if not mem[_531]:
                revert with 0, 18
            if sub_797a6514 > !((10^18 * _520) - (10^18 * ext_call.return_data[0]) / mem[_531]):
                revert with 0, 17
            sub_797a6514 += (10^18 * _520) - (10^18 * ext_call.return_data[0]) / mem[_531]
    else:
        mem[ceil32(return_data.size) + 132] = address(cd[4])
        require ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)]))
        staticcall address(cd[(cd[36] + ('cd', 36)[1] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(cd[4]) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(cd[(cd[36] + ('cd', 36)[1] + 36)]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 264] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ('cd', 36)[1] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
                mem[(4 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 264] = ('cd', 36).length
                mem[(4 * ceil32(return_data.size)) + 296] = ('cd', 36)[0]
                mem[(4 * ceil32(return_data.size)) + 328] = 160
                mem[(4 * ceil32(return_data.size)) + 424] = cd[(cd[36] + ('cd', 36)[1] + 4)]
                idx = 0
                s = cd[36] + ('cd', 36)[1] + 36
                t = (4 * ceil32(return_data.size)) + 456
                while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 360] = this.address
                mem[(4 * ceil32(return_data.size)) + 392] = ('cd', 36)[2]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(4 * ceil32(return_data.size)) + 456 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _527 = mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32
                require mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 260 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 291
                _536 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 261 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 261
                mem[(6 * ceil32(return_data.size)) + 260] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]
                require return_data.size >= _527 + (32 * _536) + 32
                mem[(6 * ceil32(return_data.size)) + 292 len 32 * _536] = mem[(4 * ceil32(return_data.size)) + _527 + 292 len 32 * _536]
                mem[mem[64] + 4] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _666 = mem[_658]
                mem[mem[64] + 36] = this.address
                require ext_code.size(chefAddress)
                staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_363b0485, this.address
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if mem[_690]:
                    if _666 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _666 - ext_call.return_data[0] and 10^18 > -1 / _666 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not mem[_690]:
                        revert with 0, 18
                    if sub_797a6514 > !((10^18 * _666) - (10^18 * ext_call.return_data[0]) / mem[_690]):
                        revert with 0, 17
                    sub_797a6514 += (10^18 * _666) - (10^18 * ext_call.return_data[0]) / mem[_690]
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(cd[4]) << 64 == bool(uint32(this.address), address(cd[4]) << 64)
                if not uint32(this.address), address(cd[4]) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 264] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ('cd', 36)[1] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
                mem[(4 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 264] = ('cd', 36).length
                mem[(4 * ceil32(return_data.size)) + 296] = ('cd', 36)[0]
                mem[(4 * ceil32(return_data.size)) + 328] = 160
                mem[(4 * ceil32(return_data.size)) + 424] = cd[(cd[36] + ('cd', 36)[1] + 4)]
                idx = 0
                s = cd[36] + ('cd', 36)[1] + 36
                t = (4 * ceil32(return_data.size)) + 456
                while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 360] = this.address
                mem[(4 * ceil32(return_data.size)) + 392] = ('cd', 36)[2]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(4 * ceil32(return_data.size)) + 456 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _528 = mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32
                require mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 260 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 291
                _537 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 261 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 261
                mem[(6 * ceil32(return_data.size)) + 260] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]
                require return_data.size >= _528 + (32 * _537) + 32
                mem[(6 * ceil32(return_data.size)) + 292 len 32 * _537] = mem[(4 * ceil32(return_data.size)) + _528 + 292 len 32 * _537]
                mem[mem[64] + 4] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _667 = mem[_659]
                mem[mem[64] + 36] = this.address
                require ext_code.size(chefAddress)
                staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_363b0485, this.address
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if mem[_691]:
                    if _667 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _667 - ext_call.return_data[0] and 10^18 > -1 / _667 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not mem[_691]:
                        revert with 0, 18
                    if sub_797a6514 > !((10^18 * _667) - (10^18 * ext_call.return_data[0]) / mem[_691]):
                        revert with 0, 17
                    sub_797a6514 += (10^18 * _667) - (10^18 * ext_call.return_data[0]) / mem[_691]
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ('cd', 36)[1] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ('cd', 36).length
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ('cd', 36)[0]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = cd[(cd[36] + ('cd', 36)[1] + 4)]
                idx = 0
                s = cd[36] + ('cd', 36)[1] + 36
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36)[2]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _529 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 292
                _538 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 262 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 262
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]
                require return_data.size >= _529 + (32 * _538) + 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _538] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _529 + 293 len 32 * _538]
                mem[mem[64] + 4] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _668 = mem[_660]
                mem[mem[64] + 36] = this.address
                require ext_code.size(chefAddress)
                staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_363b0485, this.address
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if mem[_692]:
                    if _668 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _668 - ext_call.return_data[0] and 10^18 > -1 / _668 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not mem[_692]:
                        revert with 0, 18
                    if sub_797a6514 > !((10^18 * _668) - (10^18 * ext_call.return_data[0]) / mem[_692]):
                        revert with 0, 17
                    sub_797a6514 += (10^18 * _668) - (10^18 * ext_call.return_data[0]) / mem[_692]
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ('cd', 36)[1] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ('cd', 36).length
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ('cd', 36)[0]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = cd[(cd[36] + ('cd', 36)[1] + 4)]
                idx = 0
                s = cd[36] + ('cd', 36)[1] + 36
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36)[2]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _530 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 292
                _539 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 262 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 262
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]
                require return_data.size >= _530 + (32 * _539) + 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _539] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _530 + 293 len 32 * _539]
                mem[mem[64] + 4] = this.address
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _669 = mem[_661]
                mem[mem[64] + 36] = this.address
                require ext_code.size(chefAddress)
                staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_363b0485, this.address
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                if mem[_693]:
                    if _669 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _669 - ext_call.return_data[0] and 10^18 > -1 / _669 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not mem[_693]:
                        revert with 0, 18
                    if sub_797a6514 > !((10^18 * _669) - (10^18 * ext_call.return_data[0]) / mem[_693]):
                        revert with 0, 17
                    sub_797a6514 += (10^18 * _669) - (10^18 * ext_call.return_data[0]) / mem[_693]
}



}
