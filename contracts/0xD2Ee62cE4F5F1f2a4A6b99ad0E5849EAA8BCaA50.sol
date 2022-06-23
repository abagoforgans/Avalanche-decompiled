contract main {




// =====================  Runtime code  =====================


#
#  - settleAuction(address arg1, uint256 arg2)
#  - fetchMarketItems(uint256 arg1, uint256 arg2)
#  - sub_822f3e5d(?)
#
uint256 stor0;
array of uint256 stor1;
array of address stor2;
array of address stor3;
array of uint256 stor4;
array of uint256 stor5;
array of struct stor6;
uint256 sub_6a166964;
mapping of struct sub_e61a70c0;
mapping of uint256 sub_37f4be6b;
array of uint256 stor10;
mapping of struct stor11;
mapping of uint256 sub_14079715;
array of struct stor13;
mapping of uint256 sub_bce248cb;
mapping of struct sub_8e519705;
array of struct stor16;
mapping of struct stor17;
mapping of uint256 stor18;
mapping of uint256 stor19;

function sub_14079715(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_14079715[arg1]
}

function sub_37f4be6b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_37f4be6b[arg1]
}

function sub_66d81d18(?) {
    return sub_6a166964
}

function sub_6a166964(?) {
    return sub_6a166964
}

function getNumberOfItems() {
    return stor5.length
}

function getNumberOfCollections() {
    return stor1.length
}

function sub_8e519705(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_8e519705[arg1].field_0, 
           sub_8e519705[arg1].field_256,
           sub_8e519705[arg1].field_512,
           sub_8e519705[arg1].field_768,
           sub_8e519705[arg1].field_1024
}

function sub_bce248cb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bce248cb[arg1]
}

function sub_e61a70c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e61a70c0[arg1].field_0, 
           sub_e61a70c0[arg1].field_256,
           sub_e61a70c0[arg1].field_512,
           sub_e61a70c0[arg1].field_768,
           sub_e61a70c0[arg1].field_1024,
           sub_e61a70c0[arg1].field_1280,
           bool(sub_e61a70c0[arg1].field_1536),
           bool(sub_e61a70c0[arg1].field_1544)
}

function _fallback() payable {
    revert
}

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor6.length)
    sub_6a166964 = arg1
}

function claimFunds() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require sub_bce248cb[address(msg.sender)] > 0
    call msg.sender with:
       value sub_bce248cb[address(msg.sender)] wei
         gas gas_remaining wei
    if ext_call.success:
        sub_bce248cb[address(msg.sender)] = 0
    stor0 = 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getCollection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[arg1].field_768:
        mem[384] = stor11[arg1][3].field_0
        idx = 384
        s = 0
        while (32 * stor11[arg1].field_768) + 352 > idx:
            mem[idx + 32] = stor11[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return 32, stor11[arg1].field_0, 
           stor11[arg1].field_256,
           stor11[arg1].field_512,
           128,
           stor11[arg1].field_768,
           mem[384 len 32 * stor11[arg1].field_768]
}

function sub_9db37904(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.sender == sub_e61a70c0[stor9[arg1]].field_768
    if not sub_e61a70c0[stor9[arg1]].field_1544:
        revert with 0, 'Forbidden!'
    if sub_8e519705[stor9[arg1]].field_512:
        revert with 0, 'Forbidden!'
    require arg2 > 0
    sub_e61a70c0[stor9[arg1]].field_1024 = arg2
    stor2.length++
    stor13[stor9[arg1]].field_0++
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_0 = stor2.length
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_256 = 9
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_512 = arg2
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_768 = msg.sender
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1024 = 0
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1280 = 0
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function cancelSell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require sub_e61a70c0[stor9[arg2]].field_1536
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e61a70c0[stor9[arg2]].field_1536 = 0
    sub_e61a70c0[stor9[arg2]].field_1024 = 0
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 5
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_d99eae28(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg3 > 0
    require ext_code.size(address(arg1))
    call address(arg1).0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e61a70c0[stor9[arg2]].field_1536 = 1
    sub_e61a70c0[stor9[arg2]].field_1024 = arg3
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 2
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = arg3
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_9e66a385(?) {
    mem[0] = msg.sender
    mem[32] = 16
    mem[64] = (32 * stor16[address(msg.sender)].field_0) + 128
    mem[96] = stor16[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < stor16[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 16)
        _15 = mem[64]
        mem[64] = mem[64] + 160
        mem[_15] = stor16[address(msg.sender)][idx].field_0
        mem[_15 + 32] = stor16[address(msg.sender)][idx].field_256
        mem[_15 + 64] = stor16[address(msg.sender)][idx].field_512
        mem[_15 + 96] = stor16[address(msg.sender)][idx].field_768
        mem[_15 + 128] = stor16[address(msg.sender)][idx].field_1024
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _25 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_25 + 32]
        mem[t + 64] = mem[_25 + 64]
        mem[t + 96] = mem[_25 + 108 len 20]
        mem[t + 128] = mem[_25 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _16 + (160 * _17) + -mem[64] + 64
}

function cancelAuction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_e61a70c0[stor9[arg2]].field_1544:
        revert with 0, 'Forbidden'
    if sub_8e519705[stor9[arg2]].field_512:
        revert with 0, 'Forbidden'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e61a70c0[stor9[arg2]].field_1544 = 0
    sub_e61a70c0[stor9[arg2]].field_1024 = 0
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 5
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_6538bc4f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = sub_37f4be6b[arg1]
    mem[32] = 13
    mem[64] = (32 * stor13[stor9[arg1]].field_0) + 128
    mem[96] = stor13[stor9[arg1]].field_0
    s = 128
    idx = 0
    while idx < stor13[stor9[arg1]].field_0:
        mem[0] = sha3(sub_37f4be6b[arg1], 13)
        _17 = mem[64]
        mem[64] = mem[64] + 192
        mem[_17] = stor13[stor9[arg1]][idx].field_0
        mem[_17 + 32] = stor13[stor9[arg1]][idx].field_256
        mem[_17 + 64] = stor13[stor9[arg1]][idx].field_512
        mem[_17 + 96] = stor13[stor9[arg1]][idx].field_768
        mem[_17 + 128] = stor13[stor9[arg1]][idx].field_1024
        mem[_17 + 160] = stor13[stor9[arg1]][idx].field_1280
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    _19 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _19:
        _28 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_28 + 32]
        mem[t + 64] = mem[_28 + 64]
        mem[t + 96] = mem[_28 + 108 len 20]
        mem[t + 128] = mem[_28 + 140 len 20]
        mem[t + 160] = mem[_28 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _18 + (192 * _19) + -mem[64] + 64
}

function sub_03f32bec(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require not sub_e61a70c0[stor9[arg2]].field_1536
    require not sub_e61a70c0[stor9[arg2]].field_1544
    require arg3 > 0
    require ext_code.size(address(arg1))
    call address(arg1).0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3.length++
    sub_8e519705[stor9[arg2]].field_0 = stor3.length
    sub_8e519705[stor9[arg2]].field_256 = arg2
    sub_e61a70c0[stor9[arg2]].field_1544 = 1
    sub_e61a70c0[stor9[arg2]].field_1024 = arg3
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 8
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = arg3
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_99ef76a0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(address(arg3))
    call address(arg3).0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_e61a70c0[stor9[arg2]].field_512 != msg.sender:
        if stor10[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        if stor10[address(msg.sender)] - 1 >= stor10[address(msg.sender)]:
            revert with 'NH{q', 50
        if stor19[address(msg.sender)][stor9[arg2]] >= stor10[address(msg.sender)]:
            revert with 'NH{q', 50
        stor10[address(msg.sender)][stor19[address(msg.sender)][stor9[arg2]]] = stor10[address(msg.sender)][stor10[address(msg.sender)]]
        if not stor10[address(msg.sender)]:
            revert with 'NH{q', 49
        stor10[address(msg.sender)][stor10[address(msg.sender)]] = 0
        stor10[address(msg.sender)]--
        stor19[address(msg.sender)][stor9[arg2]] = 0
    if sub_e61a70c0[stor9[arg2]].field_512 != address(arg1):
        stor10[address(arg1)]++
        stor10[address(arg1)][stor10[address(arg1)]] = sub_37f4be6b[arg2]
        if stor10[address(arg1)] < 1:
            revert with 'NH{q', 17
        stor19[address(arg1)][stor9[arg2]] = stor10[address(arg1)] - 1
    sub_e61a70c0[stor9[arg2]].field_768 = address(arg1)
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 3
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = 0
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = address(arg1)
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function placeBid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_e61a70c0[stor9[arg1]].field_1544:
        revert with 0, 'Item not listed'
    if sub_e61a70c0[stor9[arg1]].field_768 == msg.sender:
        revert with 0, 'Forbidden!'
    if sub_8e519705[stor9[arg1]].field_512:
        if sub_8e519705[stor9[arg1]].field_512 < block.timestamp:
            revert with 0, 'Auction ended'
    if not sub_8e519705[stor9[arg1]].field_512:
        if msg.value < sub_e61a70c0[stor9[arg1]].field_1024:
            revert with 0, 'Invalid price!'
        if block.timestamp > -86401:
            revert with 'NH{q', 17
        sub_8e519705[stor9[arg1]].field_512 = block.timestamp + (24 * 3600)
    else:
        if sub_8e519705[stor9[arg1]].field_1024 and 15 > -1 / sub_8e519705[stor9[arg1]].field_1024:
            revert with 'NH{q', 17
        if sub_8e519705[stor9[arg1]].field_1024 > -(15 * sub_8e519705[stor9[arg1]].field_1024 / 100) - 1:
            revert with 'NH{q', 17
        if msg.value < sub_8e519705[stor9[arg1]].field_1024 + (15 * sub_8e519705[stor9[arg1]].field_1024 / 100):
            revert with 0, 'Invalid bid.'
        call sub_8e519705[stor9[arg1]].field_768 with:
           value sub_8e519705[stor9[arg1]].field_1024 wei
             gas gas_remaining wei
        if not ext_call.success:
            if sub_bce248cb[stor15[stor9[arg1]].field_768] > -sub_8e519705[stor9[arg1]].field_1024 - 1:
                revert with 'NH{q', 17
            sub_bce248cb[stor15[stor9[arg1]].field_768] += sub_8e519705[stor9[arg1]].field_1024
    sub_8e519705[stor9[arg1]].field_768 = msg.sender
    sub_8e519705[stor9[arg1]].field_1024 = msg.value
    stor16[address(msg.sender)].field_0++
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_0 = sub_8e519705[stor9[arg1]].field_0
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_256 = arg1
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_512 = block.timestamp
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_768 = msg.sender
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_1024 = msg.value
    stor2.length++
    stor13[stor9[arg1]].field_0++
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_0 = stor2.length
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_256 = 4
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_512 = msg.value
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_768 = msg.sender
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1024 = 0
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1280 = 0
    stor13[stor9[arg1]][stor13[stor9[arg1]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_0b593d13(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if stor10[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor10[address(arg1)]
    mem[64] = (32 * stor10[address(arg1)]) + 128
    if not stor10[address(arg1)]:
        mem[0] = address(arg1)
        mem[32] = 10
        idx = 0
        while idx < stor10[address(arg1)]:
            if idx >= stor10[address(arg1)]:
                revert with 'NH{q', 50
            mem[0] = stor10[address(arg1)][idx]
            mem[32] = 8
            _46 = mem[64]
            mem[64] = mem[64] + 256
            mem[_46] = sub_e61a70c0[stor10[address(arg1)][idx]].field_0
            mem[_46 + 32] = sub_e61a70c0[stor10[address(arg1)][idx]].field_256
            mem[_46 + 64] = sub_e61a70c0[stor10[address(arg1)][idx]].field_512
            mem[_46 + 96] = sub_e61a70c0[stor10[address(arg1)][idx]].field_768
            mem[_46 + 128] = sub_e61a70c0[stor10[address(arg1)][idx]].field_1024
            mem[_46 + 160] = sub_e61a70c0[stor10[address(arg1)][idx]].field_1280
            mem[_46 + 192] = bool(sub_e61a70c0[stor10[address(arg1)][idx]].field_1536)
            mem[_46 + 224] = bool(sub_e61a70c0[stor10[address(arg1)][idx]].field_1544)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _46
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 10
            idx = idx + 1
            continue 
        _43 = mem[64]
        mem[mem[64]] = 32
        _48 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _48:
            _78 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_78 + 32]
            mem[t + 64] = mem[_78 + 76 len 20]
            mem[t + 96] = mem[_78 + 108 len 20]
            mem[t + 128] = mem[_78 + 128]
            mem[t + 160] = mem[_78 + 160]
            mem[t + 192] = bool(mem[_78 + 192])
            mem[t + 224] = bool(mem[_78 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _43 + (256 * _48) + -mem[64] + 64
    mem[64] = (32 * stor10[address(arg1)]) + 384
    mem[(32 * stor10[address(arg1)]) + 128] = 0
    mem[(32 * stor10[address(arg1)]) + 160] = 0
    mem[(32 * stor10[address(arg1)]) + 192] = 0
    mem[(32 * stor10[address(arg1)]) + 224] = 0
    mem[(32 * stor10[address(arg1)]) + 256] = 0
    mem[(32 * stor10[address(arg1)]) + 288] = 0
    mem[(32 * stor10[address(arg1)]) + 320] = 0
    mem[(32 * stor10[address(arg1)]) + 352] = 0
    mem[var21001] = (32 * stor10[address(arg1)]) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * stor10[address(arg1)]) + 128] = 0
        mem[(32 * stor10[address(arg1)]) + 160] = 0
        mem[(32 * stor10[address(arg1)]) + 192] = 0
        mem[(32 * stor10[address(arg1)]) + 224] = 0
        mem[(32 * stor10[address(arg1)]) + 256] = 0
        mem[(32 * stor10[address(arg1)]) + 288] = 0
        mem[(32 * stor10[address(arg1)]) + 320] = 0
        mem[(32 * stor10[address(arg1)]) + 352] = 0
        mem[s + 32] = (32 * stor10[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 10
    idx = 0
    while idx < stor10[address(arg1)]:
        if idx >= stor10[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = stor10[address(arg1)][idx]
        mem[32] = 8
        _111 = mem[64]
        mem[64] = mem[64] + 256
        mem[_111] = sub_e61a70c0[stor10[address(arg1)][idx]].field_0
        mem[_111 + 32] = sub_e61a70c0[stor10[address(arg1)][idx]].field_256
        mem[_111 + 64] = sub_e61a70c0[stor10[address(arg1)][idx]].field_512
        mem[_111 + 96] = sub_e61a70c0[stor10[address(arg1)][idx]].field_768
        mem[_111 + 128] = sub_e61a70c0[stor10[address(arg1)][idx]].field_1024
        mem[_111 + 160] = sub_e61a70c0[stor10[address(arg1)][idx]].field_1280
        mem[_111 + 192] = bool(sub_e61a70c0[stor10[address(arg1)][idx]].field_1536)
        mem[_111 + 224] = bool(sub_e61a70c0[stor10[address(arg1)][idx]].field_1544)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _111
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 10
        idx = idx + 1
        continue 
    _108 = mem[64]
    mem[mem[64]] = 32
    _113 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _113:
        _124 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_124 + 32]
        mem[t + 64] = mem[_124 + 76 len 20]
        mem[t + 96] = mem[_124 + 108 len 20]
        mem[t + 128] = mem[_124 + 128]
        mem[t + 160] = mem[_124 + 160]
        mem[t + 192] = bool(mem[_124 + 192])
        mem[t + 224] = bool(mem[_124 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _108 + (256 * _113) + -mem[64] + 64
}

function buyItem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.value == sub_e61a70c0[stor9[arg2]].field_1024
    require sub_e61a70c0[stor9[arg2]].field_768 != msg.sender
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_e61a70c0[stor9[arg2]].field_1024 / 100 and sub_6a166964 > -1 / sub_e61a70c0[stor9[arg2]].field_1024 / 100:
        revert with 'NH{q', 17
    if msg.value / 100 and sub_e61a70c0[stor9[arg2]].field_1280 > -1 / msg.value / 100:
        revert with 'NH{q', 17
    if msg.value < msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280:
        revert with 'NH{q', 17
    if msg.value - (msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280) < sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964:
        revert with 'NH{q', 17
    call sub_e61a70c0[stor9[arg2]].field_768 with:
       value msg.value - (msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280) - (sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964) wei
         gas gas_remaining wei
    if not ext_call.success:
        if sub_bce248cb[stor8[stor9[arg2]].field_768] > -msg.value + (msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280) + (sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964) - 1:
            revert with 'NH{q', 17
        sub_bce248cb[stor8[stor9[arg2]].field_768] = sub_bce248cb[stor8[stor9[arg2]].field_768] + msg.value - (msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280) - (sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964)
    call sub_e61a70c0[stor9[arg2]].field_512 with:
       value msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280 wei
         gas gas_remaining wei
    if not ext_call.success:
        if sub_bce248cb[stor8[stor9[arg2]].field_512] > (-1 * msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280) - 1:
            revert with 'NH{q', 17
        sub_bce248cb[stor8[stor9[arg2]].field_512] += msg.value / 100 * sub_e61a70c0[stor9[arg2]].field_1280
    call address(stor6.length) with:
       value sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964 wei
         gas gas_remaining wei
    if not ext_call.success:
        if sub_bce248cb[address(stor6.length)] > (-1 * sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964) - 1:
            revert with 'NH{q', 17
        sub_bce248cb[address(stor6.length)] += sub_e61a70c0[stor9[arg2]].field_1024 / 100 * sub_6a166964
    if stor18[stor8[stor9[arg2]].field_768]:
        if stor17[stor18[stor8[stor9[arg2]].field_768]].field_256 > -msg.value - 1:
            revert with 'NH{q', 17
        stor17[stor18[stor8[stor9[arg2]].field_768]].field_256 += msg.value
    else:
        stor4.length++
        stor17[stor4.length].field_0 = sub_e61a70c0[stor9[arg2]].field_768
        stor17[stor4.length].field_256 = msg.value
        stor18[stor8[stor9[arg2]].field_768] = stor4.length
    if stor11[stor8[stor9[arg2]].field_0].field_256 > -msg.value - 1:
        revert with 'NH{q', 17
    stor11[stor8[stor9[arg2]].field_0].field_256 += msg.value
    sub_e61a70c0[stor9[arg2]].field_768 = msg.sender
    sub_e61a70c0[stor9[arg2]].field_1536 = 0
    if sub_e61a70c0[stor9[arg2]].field_512 != sub_e61a70c0[stor9[arg2]].field_768:
        if stor10[stor8[stor9[arg2]].field_768] < 1:
            revert with 'NH{q', 17
        if stor10[stor8[stor9[arg2]].field_768] - 1 >= stor10[stor8[stor9[arg2]].field_768]:
            revert with 'NH{q', 50
        if stor19[stor8[stor9[arg2]].field_768][stor9[arg2]] >= stor10[stor8[stor9[arg2]].field_768]:
            revert with 'NH{q', 50
        stor10[stor8[stor9[arg2]].field_768][stor19[stor8[stor9[arg2]].field_768][stor9[arg2]]] = stor10[stor8[stor9[arg2]].field_768][stor10[stor8[stor9[arg2]].field_768]]
        if not stor10[stor8[stor9[arg2]].field_768]:
            revert with 'NH{q', 49
        stor10[stor8[stor9[arg2]].field_768][stor10[stor8[stor9[arg2]].field_768]] = 0
        stor10[stor8[stor9[arg2]].field_768]--
        stor19[stor8[stor9[arg2]].field_768][stor9[arg2]] = 0
    if sub_e61a70c0[stor9[arg2]].field_512 != msg.sender:
        stor10[address(msg.sender)]++
        stor10[address(msg.sender)][stor10[address(msg.sender)]] = sub_37f4be6b[arg2]
        if stor10[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        stor19[address(msg.sender)][stor9[arg2]] = stor10[address(msg.sender)] - 1
    stor2.length++
    stor13[stor9[arg2]].field_0++
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_0 = stor2.length
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_256 = 6
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_512 = sub_e61a70c0[stor9[arg2]].field_1024
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_768 = sub_e61a70c0[stor9[arg2]].field_768
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1024 = msg.sender
    stor13[stor9[arg2]][stor13[stor9[arg2]].field_0].field_1280 = block.timestamp
    stor0 = 1
}

function sub_6f420977(?) {
    if stor4.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if not stor4.length:
        if var29002 >= stor4.length:
            mem[(32 * stor4.length) + 128] = 32
            mem[(32 * stor4.length) + 160] = stor4.length
            idx = 0
            s = 128
            t = (32 * stor4.length) + 192
            while idx < mem[96]:
                _83 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_83 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor4.length) + -mem[64] + 192
        if var41003 > -2:
            revert with 'NH{q', 17
        mem[0] = var43002 + 1
        mem[32] = 17
        mem[64] = (32 * stor4.length) + 192
        mem[(32 * stor4.length) + 128] = stor17[var43002 + 1].field_0
        mem[(32 * stor4.length) + 160] = stor17[var43002 + 1].field_256
        s = var43002 + 1
        idx = var43007
        while idx < stor4.length:
            mem[(32 * idx) + 128] = (32 * stor4.length) + 128
            if idx == -1:
                revert with 'NH{q', 17
            if idx + 1 >= stor4.length:
                _229 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor4.length
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < stor4.length:
                    _241 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_241 + 32]
                    mem[0] = s
                    mem[32] = 17
                    mem[64] = mem[64] + 64
                    mem[(32 * stor4.length) + 128] = stor17[s].field_0
                    mem[(32 * stor4.length) + 160] = stor17[var43002 + 1].field_256
                    idx = idx + 1
                    t = t + 32
                    u = u + 64
                    continue 
                return memory
                  from mem[64]
                   len _229 + (64 * stor4.length) + -mem[64] + 64
            if idx + 1 > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 3
            mem[32] = 17
            mem[64] = mem[64] + 64
            mem[(32 * stor4.length) + 128] = stor17[idx + 3].field_0
            mem[(32 * stor4.length) + 160] = stor17[var43002 + 1].field_256
            s = idx + 2
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * stor4.length) + 192
        mem[(32 * stor4.length) + 128] = 0
        mem[(32 * stor4.length) + 160] = 0
        mem[var11001] = (32 * stor4.length) + 128
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor4.length) + 128] = 0
            mem[(32 * stor4.length) + 160] = 0
            mem[s + 32] = (32 * stor4.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var36002 >= stor4.length:
            _105 = mem[64]
            mem[mem[64]] = 32
            _106 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _106:
                _129 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_129 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _105 + (64 * _106) + -mem[64] + 64
        if var48003 > -2:
            revert with 'NH{q', 17
        mem[0] = var50002 + 1
        mem[32] = 17
        _255 = mem[64]
        mem[64] = mem[64] + 64
        mem[_255] = stor17[var50002 + 1].field_0
        mem[_255 + 32] = stor17[var50002 + 1].field_256
        _256 = mem[96]
        s = var50002 + 1
        idx = var50007
        while idx < _256:
            mem[(32 * idx) + 128] = _255
            if idx == -1:
                revert with 'NH{q', 17
            if idx + 1 >= stor4.length:
                _257 = mem[64]
                mem[mem[64]] = 32
                _258 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _258:
                    _263 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_263 + 32]
                    mem[0] = s
                    mem[32] = 17
                    _255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_255] = stor17[s].field_0
                    mem[_255 + 32] = stor17[var50002 + 1].field_256
                    idx = idx + 1
                    t = t + 32
                    u = u + 64
                    continue 
                return memory
                  from mem[64]
                   len _257 + (64 * _258) + -mem[64] + 64
            if idx + 1 > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 3
            mem[32] = 17
            _255 = mem[64]
            mem[64] = mem[64] + 64
            mem[_255] = stor17[idx + 3].field_0
            mem[_255 + 32] = stor17[var50002 + 1].field_256
            s = idx + 2
            idx = idx + 1
            continue 
    revert with 'NH{q', 50
}

function sub_c4e14d61(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = sub_37f4be6b[mem[(32 * idx) + 128]]
            mem[32] = 8
            _90 = sha3(sub_37f4be6b[mem[(32 * idx) + 128]], 8)
            _91 = mem[64]
            mem[64] = mem[64] + 256
            mem[_91] = sub_e61a70c0[stor9[mem[(32 * idx) + 128]]].field_0
            mem[_91 + 32] = stor1[_90]
            mem[_91 + 64] = stor2[_90]
            mem[_91 + 96] = stor3[_90]
            mem[_91 + 128] = stor4[_90]
            mem[_91 + 160] = stor5[_90]
            mem[_91 + 192] = bool(stor6[_90].field_0)
            mem[_91 + 224] = bool(stor6[_90].field_8)
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _91
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 32
        _93 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _93:
            _124 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_124 + 32]
            mem[t + 64] = mem[_124 + 76 len 20]
            mem[t + 96] = mem[_124 + 108 len 20]
            mem[t + 128] = mem[_124 + 128]
            mem[t + 160] = mem[_124 + 160]
            mem[t + 192] = bool(mem[_124 + 192])
            mem[t + 224] = bool(mem[_124 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _87 + (256 * _93) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[var34001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _153 = mem[96]
    idx = 0
    while idx < _153:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = sub_37f4be6b[mem[(32 * idx) + 128]]
        mem[32] = 8
        _158 = sha3(sub_37f4be6b[mem[(32 * idx) + 128]], 8)
        _159 = mem[64]
        mem[64] = mem[64] + 256
        mem[_159] = sub_e61a70c0[stor9[mem[(32 * idx) + 128]]].field_0
        mem[_159 + 32] = stor1[_158]
        mem[_159 + 64] = stor2[_158]
        mem[_159 + 96] = stor3[_158]
        mem[_159 + 128] = stor4[_158]
        mem[_159 + 160] = stor5[_158]
        mem[_159 + 192] = bool(stor6[_158].field_0)
        mem[_159 + 224] = bool(stor6[_158].field_8)
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _159
        if idx == -1:
            revert with 'NH{q', 17
        _153 = mem[96]
        idx = idx + 1
        continue 
    _155 = mem[64]
    mem[mem[64]] = 32
    _161 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _161:
        _172 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_172 + 32]
        mem[t + 64] = mem[_172 + 76 len 20]
        mem[t + 96] = mem[_172 + 108 len 20]
        mem[t + 128] = mem[_172 + 128]
        mem[t + 160] = mem[_172 + 160]
        mem[t + 192] = bool(mem[_172 + 192])
        mem[t + 224] = bool(mem[_172 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _155 + (256 * _161) + -mem[64] + 64
}

function getUserCollections(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 12
    if sub_14079715[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_14079715[address(arg1)]
    mem[64] = (32 * sub_14079715[address(arg1)]) + 128
    if not sub_14079715[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor1.length:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 11
            if stor11[idx + 1].field_512 != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 11
            _47 = mem[64]
            mem[64] = mem[64] + 128
            mem[_47] = stor11[idx + 1].field_0
            mem[_47 + 32] = stor11[idx + 1].field_256
            mem[_47 + 64] = stor11[idx + 1].field_512
            _48 = mem[64]
            mem[64] = mem[64] + (32 * stor11[idx + 1].field_768) + 32
            mem[_48] = stor11[idx + 1].field_768
            if stor11[idx + 1].field_768:
                mem[0] = sha3(idx + 1, 11) + 3
                mem[_48 + 32] = stor11[idx + 1][3].field_0
                t = _48 + 32
                u = sha3(sha3(idx + 1, 11) + 3)
                while _48 + (32 * stor11[idx + 1].field_768) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 96] = _48
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _47
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _38 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _38:
            mem[u] = t + -_37 - 64
            _70 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_70 + 32]
            mem[t + 64] = mem[_70 + 76 len 20]
            _79 = mem[_70 + 96]
            mem[t + 96] = 128
            _82 = mem[_79]
            mem[t + 128] = mem[_79]
            v = 0
            w = _79 + 32
            x = t + 160
            while v < _82:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _82) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * sub_14079715[address(arg1)]) + 256
        mem[(32 * sub_14079715[address(arg1)]) + 128] = 0
        mem[(32 * sub_14079715[address(arg1)]) + 160] = 0
        mem[(32 * sub_14079715[address(arg1)]) + 192] = 0
        mem[(32 * sub_14079715[address(arg1)]) + 224] = 96
        mem[var23001] = (32 * sub_14079715[address(arg1)]) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * sub_14079715[address(arg1)]) + 128] = 0
            mem[(32 * sub_14079715[address(arg1)]) + 160] = 0
            mem[(32 * sub_14079715[address(arg1)]) + 192] = 0
            mem[(32 * sub_14079715[address(arg1)]) + 224] = 96
            mem[s + 32] = (32 * sub_14079715[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor1.length:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 11
            if stor11[idx + 1].field_512 != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 11
            _103 = mem[64]
            mem[64] = mem[64] + 128
            mem[_103] = stor11[idx + 1].field_0
            mem[_103 + 32] = stor11[idx + 1].field_256
            mem[_103 + 64] = stor11[idx + 1].field_512
            _104 = mem[64]
            mem[64] = mem[64] + (32 * stor11[idx + 1].field_768) + 32
            mem[_104] = stor11[idx + 1].field_768
            if stor11[idx + 1].field_768:
                mem[0] = sha3(idx + 1, 11) + 3
                mem[_104 + 32] = stor11[idx + 1][3].field_0
                t = _104 + 32
                u = sha3(sha3(idx + 1, 11) + 3)
                while _104 + (32 * stor11[idx + 1].field_768) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_103 + 96] = _104
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _103
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _96 = mem[64]
        mem[mem[64]] = 32
        _97 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _97:
            mem[u] = t + -_96 - 64
            _112 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_112 + 32]
            mem[t + 64] = mem[_112 + 76 len 20]
            _117 = mem[_112 + 96]
            mem[t + 96] = 128
            _118 = mem[_117]
            mem[t + 128] = mem[_117]
            v = 0
            w = _117 + 32
            x = t + 160
            while v < _118:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _118) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_3f7a056b(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    require arg8 == bool(arg8)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg6:
        require arg4 > 0
    if bool(arg6) == bool(arg7):
        require not arg6
        require not arg7
    if not sub_14079715[address(msg.sender)]:
        require arg8
    else:
        if not arg8:
            if stor11[arg3].field_512 != msg.sender:
                revert with 0, '!Owner'
    stor5.length++
    sub_37f4be6b[arg2] = stor5.length
    stor10[address(msg.sender)]++
    stor10[address(msg.sender)][stor10[address(msg.sender)]] = stor5.length
    if stor10[address(msg.sender)] < 1:
        revert with 'NH{q', 17
    stor19[address(msg.sender)][stor5.length] = stor10[address(msg.sender)] - 1
    sub_e61a70c0[stor5.length].field_0 = arg3
    sub_e61a70c0[stor5.length].field_256 = arg2
    sub_e61a70c0[stor5.length].field_512 = msg.sender
    sub_e61a70c0[stor5.length].field_768 = msg.sender
    sub_e61a70c0[stor5.length].field_1024 = arg4
    sub_e61a70c0[stor5.length].field_1280 = arg5
    sub_e61a70c0[stor5.length].field_1536 = uint8(bool(arg6))
    sub_e61a70c0[stor5.length].field_1544 = Mask(248, 0, bool(arg7))
    if not arg8:
        stor11[arg3].field_768++
        stor[('array', 3, ('map', ('param', 'arg3'), ('name', 'stor11', 11))) + stor11[arg3].field_768].field_0 = arg2
        stor2.length++
        stor13[stor5.length].field_0++
        stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
        stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 1
        stor13[stor5.length][stor13[stor5.length].field_0].field_512 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
        stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        if arg6:
            require ext_code.size(address(arg1))
            call address(arg1).0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg7:
                require ext_code.size(address(arg1))
                call address(arg1).0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            stor2.length++
            stor13[stor5.length].field_0++
            stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
            stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 2
            stor13[stor5.length][stor13[stor5.length].field_0].field_512 = arg4
            stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
            stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
            stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
            stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        else:
            if arg7:
                stor3.length++
                sub_8e519705[stor5.length].field_0 = stor3.length
                sub_8e519705[stor5.length].field_256 = arg2
                sub_8e519705[stor5.length].field_512 = 0
                sub_8e519705[stor5.length].field_768 = 0
                sub_8e519705[stor5.length].field_1024 = 0
                sub_8e519705[stor5.length].field_1024 = 0
                stor2.length++
                stor13[stor5.length].field_0++
                stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
                stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 8
                stor13[stor5.length][stor13[stor5.length].field_0].field_512 = arg4
                stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
                stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
                stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
                stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        emit 0xe632c8ed: arg3, stor5.length
    else:
        stor1.length++
        sub_e61a70c0[stor5.length].field_0 = stor1.length
        stor11[stor1.length].field_0 = stor1.length
        stor11[stor1.length].field_512 = msg.sender
        stor11[stor1.length].field_768++
        stor[('array', 3, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor11', 11))) + stor11[stor1.length].field_768].field_0 = arg2
        if sub_14079715[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_14079715[address(msg.sender)]++
        stor2.length++
        stor13[stor5.length].field_0++
        stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
        stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 1
        stor13[stor5.length][stor13[stor5.length].field_0].field_512 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
        stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
        stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        if arg6:
            require ext_code.size(address(arg1))
            call address(arg1).0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg7:
                require ext_code.size(address(arg1))
                call address(arg1).0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            stor2.length++
            stor13[stor5.length].field_0++
            stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
            stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 2
            stor13[stor5.length][stor13[stor5.length].field_0].field_512 = arg4
            stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
            stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
            stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
            stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        else:
            if arg7:
                stor3.length++
                sub_8e519705[stor5.length].field_0 = stor3.length
                sub_8e519705[stor5.length].field_256 = arg2
                sub_8e519705[stor5.length].field_512 = 0
                sub_8e519705[stor5.length].field_768 = 0
                sub_8e519705[stor5.length].field_1024 = 0
                sub_8e519705[stor5.length].field_1024 = 0
                stor2.length++
                stor13[stor5.length].field_0++
                stor13[stor5.length][stor13[stor5.length].field_0].field_0 = stor2.length
                stor13[stor5.length][stor13[stor5.length].field_0].field_256 = 8
                stor13[stor5.length][stor13[stor5.length].field_0].field_512 = arg4
                stor13[stor5.length][stor13[stor5.length].field_0].field_768 = msg.sender
                stor13[stor5.length][stor13[stor5.length].field_0].field_1024 = 0
                stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = 0
                stor13[stor5.length][stor13[stor5.length].field_0].field_1280 = block.timestamp
        emit 0xe632c8ed: stor1.length, stor5.length
    stor0 = 1
}



}
