contract main {




// =====================  Runtime code  =====================


#
#  - trade(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6)
#  - sub_9bd53186(?)
#
const etherERC20 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
array of struct sub_e254a4f3;
mapping of struct partners;
uint256 sub_8ec523b3;
address sub_bb731467Address;
mapping of uint8 stor5;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function sub_6b045ad6(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function sub_8ec523b3(?) {
    return sub_8ec523b3
}

function sub_b81f7505(?) {
    return sub_e254a4f3.length
}

function sub_bb731467(?) {
    return sub_bb731467Address
}

function partners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return partners[arg1].field_0, partners[arg1].field_0, Mask(128, 128, partners[arg1].field_256)
}

function sub_d1594048(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function sub_e254a4f3(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e254a4f3.length
    mem[128] = sub_e254a4f3[arg1].field_0
    idx = 128
    s = 0
    while sub_e254a4f3[arg1].length + 96 > idx:
        mem[idx + 32] = sub_e254a4f3[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_e254a4f3[arg1].length, data=mem[128 len sub_e254a4f3[arg1].length]), 
           bool(sub_e254a4f3[arg1].field_256),
           sub_e254a4f3[arg1].field_256
}

function sub_f4de0d4f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e254a4f3.length
    return bool(sub_e254a4f3[arg1].field_256)
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_44500a44(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_8ec523b3 = arg1
    emit 0x738c273c: arg1
}

function sub_619b7e50(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor5[address(arg1)] = 1
    emit 0xfbf60b7a: arg1
}

function sub_cf52b0ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor5[address(arg1)] = 0
    emit 0xa2e5cfb6: arg1
}

function sub_2770544c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_bb731467Address = arg1
    emit 0x6ca3dc98: arg1
}

function sub_5a831ac4(?) {
    require calldata.size - 4 >= 32
    if not sub_bb731467Address:
        return 0
    require ext_code.size(sub_bb731467Address)
    staticcall sub_bb731467Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= sub_8ec523b3
}

function updatePartner(uint256 arg1, address arg2, uint16 arg3, bytes16 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg3 > 100:
        revert with 0, 'fee: no more than 1%'
    partners[arg1].field_0 = arg2
    partners[arg1].field_160 = arg3
    partners[arg1].field_256 = 0
    partners[arg1].field_512 = 0
    emit 0x5c403d03: arg3 << 240, Mask(128, 128, arg4), arg1, arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5a9b50e0(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_e254a4f3.length++
    sub_e254a4f3[sub_e254a4f3.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    storB10E[stor1.length].field_0 = 1
    storB10E[stor1.length].field_8 = arg2
    storB10E[stor1.length].field_168 = 0
    emit 0xe50f1a4b: Array(len=arg1.length, data=arg1[all]), msg.sender, arg2, sub_e254a4f3.length - 1
}

function sub_e405a406(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1 < sub_e254a4f3.length
    if sub_e254a4f3[arg1].field_256:
        revert with 0, 'This trading route is enabled'
    require arg1 < sub_e254a4f3.length
    sub_e254a4f3[arg1].field_256 = 1
    mem[160] = sub_e254a4f3[arg1].field_0
    idx = 160
    s = 0
    while sub_e254a4f3[arg1].length + 160 > idx + 32:
        mem[idx + 32] = sub_e254a4f3[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xe18f2d77: Array(len=sub_e254a4f3[arg1].length, data=mem[160 len sub_e254a4f3[arg1].length + (floor32(sub_e254a4f3[arg1].length - 1) + -sub_e254a4f3[arg1].length + 32 % 32)]), msg.sender, sub_e254a4f3[arg1].field_264, arg1
}

function sub_b0cf0721(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1 < sub_e254a4f3.length
    if bool(sub_e254a4f3[arg1].field_256) != 1:
        revert with 0, 'This trading route is disabled'
    require arg1 < sub_e254a4f3.length
    sub_e254a4f3[arg1].field_256 = 0
    mem[160] = sub_e254a4f3[arg1].field_0
    idx = 160
    s = 0
    while sub_e254a4f3[arg1].length + 160 > idx + 32:
        mem[idx + 32] = sub_e254a4f3[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x522343fe: Array(len=sub_e254a4f3[arg1].length, data=mem[160 len sub_e254a4f3[arg1].length + (floor32(sub_e254a4f3[arg1].length - 1) + -sub_e254a4f3[arg1].length + 32 % 32)]), msg.sender, sub_e254a4f3[arg1].field_264, arg1
}

function collectRemainingEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x655472616e73666572206574686572206261636b20746f2063616c6c6572206661696c6564,
                        mem[201 len 27]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        37,
                        0x655472616e73666572206574686572206261636b20746f2063616c6c6572206661696c6564,
                        mem[ceil32(return_data.size) + 202 len 27]
    ('bool', 'ext_call.success')
}

function sub_4912dd14(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xee4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function sub_42145772(?) {
    require calldata.size - 4 >= 160
    require arg1 < sub_e254a4f3.length
    require ext_code.size(sub_e254a4f3[arg1].field_264)
    staticcall sub_e254a4f3[arg1].field_264.0x1eac74b3 with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if partners[arg5].field_0:
        if not partners[arg5].field_160:
            return ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if partners[arg5].field_160 * ext_call.return_data[0] / ext_call.return_data[0] != partners[arg5].field_160:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if partners[arg5].field_160 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - (partners[arg5].field_160 * ext_call.return_data[0] / 10000))
    if not partners[0].field_160:
        return ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0]
    if partners[0].field_160 * ext_call.return_data[0] / ext_call.return_data[0] != partners[0].field_160:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if partners[0].field_160 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (partners[0].field_160 * ext_call.return_data[0] / 10000))
}

function sub_b6c91499(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'routes can not be empty'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65726f7574657320616e6420737263416d6f756e7473206c656e67746873206d69736d617463,
                    mem[202 len 26]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[4] + 36)] < sub_e254a4f3.length
        mem[0] = 1
        mem[100] = address(cd[36])
        mem[132] = address(cd[100])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(sub_e254a4f3[cd[((32 * idx) + cd[4] + 36)]].field_264)
        staticcall sub_e254a4f3[cd[((32 * idx) + cd[4] + 36)]].field_264.0x1eac74b3 with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[100]), cd[((32 * idx) + cd[68] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if partners[cd[132]].field_0:
        if not partners[cd[132]].field_160:
            return (_32 * ('cd', 4).length)
        if not _32 * ('cd', 4).length:
            if 0 > _32 * ('cd', 4).length:
                revert with 0, 'SafeMath: subtraction overflow'
            return (_32 * ('cd', 4).length)
        if partners[cd[132]].field_160 * _32 * ('cd', 4).length / _32 * ('cd', 4).length != partners[cd[132]].field_160:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if partners[cd[132]].field_160 * _32 * ('cd', 4).length / 10000 > _32 * ('cd', 4).length:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((_32 * ('cd', 4).length) - (partners[cd[132]].field_160 * _32 * ('cd', 4).length / 10000))
    if not partners[0].field_160:
        return (_32 * ('cd', 4).length)
    if not _32 * ('cd', 4).length:
        if 0 > _32 * ('cd', 4).length:
            revert with 0, 'SafeMath: subtraction overflow'
        return (_32 * ('cd', 4).length)
    if partners[0].field_160 * _32 * ('cd', 4).length / _32 * ('cd', 4).length != partners[0].field_160:
        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if partners[0].field_160 * _32 * ('cd', 4).length / 10000 > _32 * ('cd', 4).length:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((_32 * ('cd', 4).length) - (partners[0].field_160 * _32 * ('cd', 4).length / 10000))
}



}
