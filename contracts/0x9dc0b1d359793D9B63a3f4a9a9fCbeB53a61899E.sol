contract main {




// =====================  Runtime code  =====================


#
#  - sub_afefcb7c(?)
#  - sub_d6c1538c(?)
#  - sub_ffbb396f(?)
#
address owner;
array of uint256 sub_cc1e6d75;
mapping of uint256 sub_404f7e1d;
array of struct sub_249a1d67;
array of struct sub_65b91b87;
mapping of struct stor5;
mapping of uint8 stor6;
array of struct sub_1241ec2d;
uint256 NONCE;
uint256 txFee;
uint256 vIPFee;
address receiverAddress;
mapping of uint8 stor12;

function sub_0b34f31f(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    return bool(stor6[arg1][arg2][arg3])
}

function sub_1241ec2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1241ec2d[arg1].field_0
}

function receiverAddress() {
    return receiverAddress
}

function sub_249a1d67(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_249a1d67[arg1].field_0
}

function sub_404f7e1d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_404f7e1d[arg1][arg2]
}

function sub_5596d591(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_249a1d67[arg1].field_0
    return sub_249a1d67[arg1][arg2].field_0
}

function sub_65b91b87(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_65b91b87[arg1].field_0
    return sub_65b91b87[arg1][arg2].field_0
}

function sub_8315db24(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_1241ec2d[arg1].field_0
    return sub_1241ec2d[arg1][arg2].field_0, sub_1241ec2d[arg1][arg2].field_256
}

function owner() {
    return owner
}

function vipList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_bb1de949(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_65b91b87[address(arg1)].field_0
}

function sub_cc1e6d75(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_cc1e6d75[arg1][arg2]
}

function txFee() {
    return txFee
}

function NONCE() {
    return NONCE
}

function VIPFee() {
    return vIPFee
}

function _fallback() payable {
    revert
}

function getReceiverAddress() {
    if receiverAddress:
        return receiverAddress
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isVIP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == owner:
        return True
    return bool(stor12[address(arg1)])
}

function setReceiverAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    receiverAddress = arg1
}

function pause(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_2464:
        revert with 0, 'Paused'
    stor5[arg1].field_2464 = 1
}

function unpause(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if not stor5[arg1].field_2464:
        revert with 0, 'Not Paused'
    stor5[arg1].field_2464 = 0
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

function registerVIP() payable {
    if msg.value < vIPFee:
        revert with 0, 'Invalid eth amount'
    if receiverAddress:
        call receiverAddress with:
           value msg.value wei
             gas gas_remaining wei
    else:
        call owner with:
           value msg.value wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    stor12[address(msg.sender)] = 1
}

function closeClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_2472:
        revert with 0, 'Closed claim'
    stor5[arg1].field_2472 = 1
    if stor5[arg1].field_256 < stor5[arg1].field_512:
        revert with 'NH{q', 17
    require ext_code.size(stor5[arg1].field_1792)
    call stor5[arg1].field_1792.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor5[arg1].field_256 - stor5[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fail'
    emit 0xbe38f60a: arg1, stor5[arg1].field_256 - stor5[arg1].field_512, msg.sender, stor5[arg1].field_1792
}

function addToVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeFromVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2320cb3b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_1536:
        if stor5[arg1].field_1536 == stor5[arg1].field_1537 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1536 = 0
            idx = 0
            while stor5[arg1].field_1537 + 31 / 32 > idx:
                stor5[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg1].field_1536 == stor5[arg1].field_1537 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1536 = 0
            idx = 0
            while stor5[arg1].field_1537 + 31 / 32 > idx:
                stor5[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d719ecd6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_1280:
        if stor5[arg1].field_1280 == stor5[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][5][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1280 = 0
            idx = 0
            while stor5[arg1].field_1281 + 31 / 32 > idx:
                stor5[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg1].field_1280 == stor5[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][5][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1280 = 0
            idx = 0
            while stor5[arg1].field_1281 + 31 / 32 > idx:
                stor5[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}

function changeName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_2048:
        if stor5[arg1].field_2048 == stor5[arg1].field_2049 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][8][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_2048 = 0
            idx = 0
            while stor5[arg1].field_2049 + 31 / 32 > idx:
                stor5[arg1][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg1].field_2048 == stor5[arg1].field_2049 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][8][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_2048 = 0
            idx = 0
            while stor5[arg1].field_2049 + 31 / 32 > idx:
                stor5[arg1][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
}

function changeDescription(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor5[arg1].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[arg1].field_1024:
        if stor5[arg1].field_1024 == stor5[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1024 = 0
            idx = 0
            while stor5[arg1].field_1025 + 31 / 32 > idx:
                stor5[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg1].field_1024 == stor5[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_1024 = 0
            idx = 0
            while stor5[arg1].field_1025 + 31 / 32 > idx:
                stor5[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_20f2f41e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
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
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = sub_249a1d67[mem[(32 * idx) + 128]].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 32
    mem[(64 * ('cd', 4).length) + 192] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length]
    return Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length])
}

function sub_2bc142d2(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 1)
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = sub_cc1e6d75[cd[4]][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 36).length) + 160] = 32
    mem[(64 * ('cd', 36).length) + 192] = ('cd', 36).length
    mem[(64 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length]
    return Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length])
}

function sub_719e4d98(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 2)
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = sub_404f7e1d[cd[4]][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 36).length) + 160] = 32
    mem[(64 * ('cd', 36).length) + 192] = ('cd', 36).length
    mem[(64 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length]
    return Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length])
}

function sub_e9f22519(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 7
    mem[64] = (32 * sub_1241ec2d[arg1].field_0) + 128
    mem[96] = sub_1241ec2d[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_1241ec2d[arg1].field_0:
        mem[0] = sha3(arg1, 7)
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = sub_1241ec2d[arg1][idx].field_0
        mem[_30 + 32] = sub_1241ec2d[arg1][idx].field_256
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    _28 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _31 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _28) + 32
    if not _28:
        _53 = mem[96]
        idx = 0
        while idx < _53:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_31]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _31 + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            _53 = mem[96]
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[_31]
        mem[mem[64] + 32] = mem[_31]
        idx = 0
        s = _31 + 32
        t = mem[64] + 64
        while idx < _59:
            _75 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_75 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _56 + (64 * _59) + -mem[64] + 64
    mem[64] = _31 + (32 * _28) + 96
    mem[_31 + (32 * _28) + 32] = 0
    mem[_31 + (32 * _28) + 64] = 0
    mem[var22001] = _31 + (32 * _28) + 32
    s = var22001
    idx = var22002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_31 + (32 * _28) + 32] = 0
        mem[_31 + (32 * _28) + 64] = 0
        mem[s + 32] = _31 + (32 * _28) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _89 = mem[96]
    idx = 0
    while idx < _89:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_31]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _31 + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        _89 = mem[96]
        idx = idx + 1
        continue 
    _91 = mem[64]
    mem[mem[64]] = 32
    _94 = mem[_31]
    mem[mem[64] + 32] = mem[_31]
    idx = 0
    s = _31 + 32
    t = mem[64] + 64
    while idx < _94:
        _99 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_99 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _91 + (64 * _94) + -mem[64] + 64
}

function sub_04649e71(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_65b91b87[address(arg1)].field_0:
        if sub_65b91b87[address(arg1)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_65b91b87[address(arg1)].field_0) + 128] = sub_65b91b87[address(arg1)].field_0
        if sub_65b91b87[address(arg1)].field_0:
            mem[(32 * sub_65b91b87[address(arg1)].field_0) + 160 len 32 * sub_65b91b87[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_65b91b87[address(arg1)].field_0]
        idx = 0
        while idx < sub_65b91b87[address(arg1)].field_0:
            if idx >= sub_65b91b87[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_65b91b87[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_65b91b87[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(64 * sub_65b91b87[address(arg1)].field_0) + 160] = 32
        mem[(64 * sub_65b91b87[address(arg1)].field_0) + 192] = sub_65b91b87[address(arg1)].field_0
        mem[(64 * sub_65b91b87[address(arg1)].field_0) + 224 len 32 * sub_65b91b87[address(arg1)].field_0] = mem[(32 * sub_65b91b87[address(arg1)].field_0) + 160 len 32 * sub_65b91b87[address(arg1)].field_0]
        return memory
          from (64 * sub_65b91b87[address(arg1)].field_0) + 160
           len (161 * sub_65b91b87[address(arg1)].field_0) + 64
    mem[128] = sub_65b91b87[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_65b91b87[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_65b91b87[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_65b91b87[address(arg1)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * sub_65b91b87[address(arg1)].field_0) + 128] = sub_65b91b87[address(arg1)].field_0
    if sub_65b91b87[address(arg1)].field_0:
        mem[(32 * sub_65b91b87[address(arg1)].field_0) + 160 len 32 * sub_65b91b87[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_65b91b87[address(arg1)].field_0]
    idx = 0
    while idx < sub_65b91b87[address(arg1)].field_0:
        if idx >= sub_65b91b87[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_65b91b87[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * sub_65b91b87[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * sub_65b91b87[address(arg1)].field_0) + 160] = 32
    mem[(64 * sub_65b91b87[address(arg1)].field_0) + 192] = sub_65b91b87[address(arg1)].field_0
    mem[(64 * sub_65b91b87[address(arg1)].field_0) + 224 len 32 * sub_65b91b87[address(arg1)].field_0] = mem[(32 * sub_65b91b87[address(arg1)].field_0) + 160 len 32 * sub_65b91b87[address(arg1)].field_0]
    return Array(len=sub_65b91b87[address(arg1)].field_0, data=mem[(32 * sub_65b91b87[address(arg1)].field_0) + 160 len 32 * sub_65b91b87[address(arg1)].field_0]), 
}

function claimTokens(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_1241ec2d[arg1].field_0 <= arg2:
        revert with 0, 'Invalid VestingId'
    if arg2 >= sub_1241ec2d[arg1].field_0:
        revert with 'NH{q', 50
    if sub_1241ec2d[arg1][arg2].field_0 > block.timestamp:
        revert with 0, 'Under Locked'
    if stor5[arg1].field_2464:
        revert with 0, 'Paused'
    if stor5[arg1].field_2472:
        revert with 0, 'Closed claim'
    if stor6[arg1][arg2][address(msg.sender)]:
        revert with 0, 'Claim token completed'
    if sub_cc1e6d75[arg1][address(msg.sender)] <= 0:
        revert with 0, 'Invalid amount'
    if arg2 >= sub_1241ec2d[arg1].field_0:
        revert with 'NH{q', 50
    if sub_cc1e6d75[arg1][address(msg.sender)] and sub_1241ec2d[arg1][arg2].field_256 > -1 / sub_cc1e6d75[arg1][address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_cc1e6d75[arg1][address(msg.sender)] < sub_404f7e1d[arg1][address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18 <= sub_cc1e6d75[arg1][address(msg.sender)] - sub_404f7e1d[arg1][address(msg.sender)]:
        if sub_404f7e1d[arg1][address(msg.sender)] > -(sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18) - 1:
            revert with 'NH{q', 17
        sub_404f7e1d[arg1][address(msg.sender)] += sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18
        stor6[arg1][arg2][address(msg.sender)] = 1
        if stor5[arg1].field_512 > -(sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18) - 1:
            revert with 'NH{q', 17
        stor5[arg1].field_512 += sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18
        require ext_code.size(stor5[arg1].field_1792)
        call stor5[arg1].field_1792.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer fail'
        emit 0x1c5bd960: arg1, arg2, sub_cc1e6d75[arg1][address(msg.sender)] * sub_1241ec2d[arg1][arg2].field_256 / 100 * 10^18, msg.sender, stor5[arg1].field_1792
    else:
        if sub_404f7e1d[arg1][address(msg.sender)] > -sub_cc1e6d75[arg1][address(msg.sender)] + sub_404f7e1d[arg1][address(msg.sender)] - 1:
            revert with 'NH{q', 17
        sub_404f7e1d[arg1][address(msg.sender)] = sub_cc1e6d75[arg1][address(msg.sender)]
        stor6[arg1][arg2][address(msg.sender)] = 1
        if stor5[arg1].field_512 > -sub_cc1e6d75[arg1][address(msg.sender)] + sub_404f7e1d[arg1][address(msg.sender)] - 1:
            revert with 'NH{q', 17
        stor5[arg1].field_512 = stor5[arg1].field_512 + sub_cc1e6d75[arg1][address(msg.sender)] - sub_404f7e1d[arg1][address(msg.sender)]
        require ext_code.size(stor5[arg1].field_1792)
        call stor5[arg1].field_1792.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_cc1e6d75[arg1][address(msg.sender)] - sub_404f7e1d[arg1][address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer fail'
        emit 0x1c5bd960: arg1, arg2, sub_cc1e6d75[arg1][address(msg.sender)] - sub_404f7e1d[arg1][address(msg.sender)], msg.sender, stor5[arg1].field_1792
}

function sub_122dff7f(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > test266151307() or (32 * ('cd', 68).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor5[cd[4]].field_2304 != msg.sender:
        revert with 0, 'Only owner'
    if stor5[cd[4]].field_2472:
        revert with 0, 'Closed claim'
    if ('cd', 36).length <= 0:
        revert with 0, 'Invalid length'
    if ('cd', 36).length > 200:
        revert with 0, 'Invalid length'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Args are not match'
    mem[0] = cd[4]
    mem[32] = 5
    idx = 0
    s = sub_cc1e6d75[sha3(mem[0 len 64])]
    while idx < ('cd', 68).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + (32 * ('cd', 36).length) + 160] - 1:
            revert with 'NH{q', 17
        if sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])]:
            if sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])] < sub_404f7e1d[cd[4]][address(mem[(32 * idx) + 128])]:
                revert with 0, 'Invalid user amount'
            if s + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] < sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(cd[4], 1)
            sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * ('cd', 36).length) + 160] - sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])]
            continue 
        sub_249a1d67[cd[4]].field_0++
        sub_249a1d67[cd[4]][sub_249a1d67[cd[4]].field_0].field_0 = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 1)
        sub_cc1e6d75[cd[4]][address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        continue 
    require ext_code.size(stor5[cd[4]].field_1792)
    staticcall stor5[cd[4]].field_1792.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if s >= stor5[cd[4]].field_256:
        require ext_code.size(stor5[cd[4]].field_1792)
        call stor5[cd[4]].field_1792.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), s - stor5[cd[4]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer fail'
        require ext_code.size(stor5[cd[4]].field_1792)
        staticcall stor5[cd[4]].field_1792.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if s < stor5[cd[4]].field_256:
            revert with 'NH{q', 17
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if s - stor5[cd[4]].field_256 != 0:
            revert with 0, 'Token is not supported'
    else:
        if stor5[cd[4]].field_256 < s:
            revert with 'NH{q', 17
        require ext_code.size(stor5[cd[4]].field_1792)
        call stor5[cd[4]].field_1792.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor5[cd[4]].field_256 - s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer fail'
        require ext_code.size(stor5[cd[4]].field_1792)
        staticcall stor5[cd[4]].field_1792.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor5[cd[4]].field_256 < s:
            revert with 'NH{q', 17
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if stor5[cd[4]].field_256 - s != 0:
            revert with 0, 'Token is not supported'
    stor5[cd[4]].field_256 = s
}

function sub_98774266(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = sub_249a1d67[arg1].field_0
    if not sub_249a1d67[arg1].field_0:
        if arg2 > -arg3 - 1:
            revert with 'NH{q', 17
        if arg2 + arg3 <= sub_249a1d67[arg1].field_0:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * sub_249a1d67[arg1].field_0) + 128] = arg3
            mem[64] = (32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 160
            if arg3:
                mem[(32 * sub_249a1d67[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= sub_249a1d67[arg1].field_0:
                    revert with 'NH{q', 50
                if idx >= arg3:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[(32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 160] = 32
            mem[(32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 192] = arg3
            idx = 0
            s = (32 * sub_249a1d67[arg1].field_0) + 160
            t = mem[64] + 64
            while idx < arg3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (32 * sub_249a1d67[arg1].field_0) + (64 * arg3) + -mem[64] + 224
        if sub_249a1d67[arg1].field_0 < arg2:
            revert with 'NH{q', 17
        if sub_249a1d67[arg1].field_0 - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_249a1d67[arg1].field_0) + 128] = sub_249a1d67[arg1].field_0 - arg2
        mem[64] = (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160
        if not sub_249a1d67[arg1].field_0 - arg2:
            idx = 0
            while idx < sub_249a1d67[arg1].field_0 - arg2:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= sub_249a1d67[arg1].field_0:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * sub_249a1d67[arg1].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160] = 32
            _42 = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
            mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 192] = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
            idx = 0
            s = (32 * sub_249a1d67[arg1].field_0) + 160
            t = mem[64] + 64
            while idx < _42:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + (32 * _42) + -mem[64] + 224
        mem[(32 * sub_249a1d67[arg1].field_0) + 160 len 32 * sub_249a1d67[arg1].field_0 - arg2] = call.data[calldata.size len 32 * sub_249a1d67[arg1].field_0 - arg2]
        idx = 0
        while idx < sub_249a1d67[arg1].field_0 - arg2:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= sub_249a1d67[arg1].field_0:
                revert with 'NH{q', 50
            if idx >= mem[(32 * sub_249a1d67[arg1].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160] = 32
        _43 = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 192] = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
        idx = 0
        s = (32 * sub_249a1d67[arg1].field_0) + 160
        t = mem[64] + 64
        while idx < _43:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + (32 * _43) + -mem[64] + 224
    mem[128] = sub_249a1d67[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_249a1d67[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_249a1d67[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 <= sub_249a1d67[arg1].field_0:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_249a1d67[arg1].field_0) + 128] = arg3
        mem[64] = (32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 160
        if arg3:
            mem[(32 * sub_249a1d67[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= sub_249a1d67[arg1].field_0:
                revert with 'NH{q', 50
            if idx >= arg3:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 160] = 32
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * arg3) + 192] = arg3
        idx = 0
        s = (32 * sub_249a1d67[arg1].field_0) + 160
        t = mem[64] + 64
        while idx < arg3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_249a1d67[arg1].field_0) + (64 * arg3) + -mem[64] + 224
    if sub_249a1d67[arg1].field_0 < arg2:
        revert with 'NH{q', 17
    if sub_249a1d67[arg1].field_0 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * sub_249a1d67[arg1].field_0) + 128] = sub_249a1d67[arg1].field_0 - arg2
    mem[64] = (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160
    if not sub_249a1d67[arg1].field_0 - arg2:
        idx = 0
        while idx < sub_249a1d67[arg1].field_0 - arg2:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= sub_249a1d67[arg1].field_0:
                revert with 'NH{q', 50
            if idx >= mem[(32 * sub_249a1d67[arg1].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160] = 32
        _110 = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
        mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 192] = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
        idx = 0
        s = (32 * sub_249a1d67[arg1].field_0) + 160
        t = mem[64] + 64
        while idx < _110:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + (32 * _110) + -mem[64] + 224
    mem[(32 * sub_249a1d67[arg1].field_0) + 160 len 32 * sub_249a1d67[arg1].field_0 - arg2] = call.data[calldata.size len 32 * sub_249a1d67[arg1].field_0 - arg2]
    idx = 0
    while idx < sub_249a1d67[arg1].field_0 - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        if arg2 + idx >= sub_249a1d67[arg1].field_0:
            revert with 'NH{q', 50
        if idx >= mem[(32 * sub_249a1d67[arg1].field_0) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * sub_249a1d67[arg1].field_0) + 160] = mem[(32 * arg2 + idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 160] = 32
    _111 = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
    mem[(32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + 192] = mem[(32 * sub_249a1d67[arg1].field_0) + 128]
    idx = 0
    s = (32 * sub_249a1d67[arg1].field_0) + 160
    t = mem[64] + 64
    while idx < _111:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_249a1d67[arg1].field_0) + (32 * sub_249a1d67[arg1].field_0 - arg2) + (32 * _111) + -mem[64] + 224
}



}
