contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of struct tokens;
address sub_5464f3c4Address;
address sub_e7d1b42aAddress;
address feeAddress;
address feeTokenAddress;
uint256 stor11;
uint256 sub_33a4ea06;
mapping of address stor99;

function tokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return tokens[arg1[all]].field_0, uint256(tokens[arg1[all]].field_256), uint256(tokens[arg1[all]].field_512)
}

function uniswapV2Router() {
    return address(stor2.length)
}

function sub_33a4ea06(?) {
    return sub_33a4ea06
}

function feeAddress() {
    return feeAddress
}

function sub_533ff9a6(?) {
    require calldata.size - 4 >= 64
    return bool(stor4[arg1][arg2])
}

function sub_5464f3c4(?) {
    return sub_5464f3c4Address
}

function processedNonces(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor3[arg1][arg2])
}

function owner() {
    return owner
}

function sub_a58d9fff(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor5[arg1][arg2])
}

function feeTokenAddress() {
    return feeTokenAddress
}

function sub_e7d1b42a(?) {
    return sub_e7d1b42aAddress
}

function vault() {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function sub_b005d170(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only admin'
    stor11 = arg1
}

function sub_41ca6129(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only admin'
    sub_33a4ea06 = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only admin'
    feeAddress = arg1
}

function setFeeTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only admin'
    feeTokenAddress = arg1
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only admin'
    address(stor2.length) = arg1
}

function sub_34bc6311(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'only admin'
    sub_e7d1b42aAddress = address(arg1)
}

function sub_c5979a24(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'only admin'
    sub_5464f3c4Address = address(arg1)
}

function sub_e999b2da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'only admin'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Balance is zero'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11b0d4d9(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'only admin'
    if not arg2:
        stor11 = arg1
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if not 10^arg2:
                revert with 0, 18
            stor11 = arg1 / 10^arg2
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            stor11 = arg1 / s * t
}

function sub_cf0ab3d1(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'only admin'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    uint256(stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg3
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'only admin'
    if arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_00523d67(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'only admin'
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 6)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256] = uint64(arg2) << 96
    uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]) = arg3
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]) = arg4
}

function sub_a9b6a8af(?) {
    require calldata.size - 4 >= 544
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require calldata.size - 164 >= 320
    require arg16 <= test266151307()
    require arg16 + 35 < calldata.size
    if arg16.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg16.length)) + 97 < 96 or ceil32(ceil32(arg16.length)) + 97 > test266151307():
        revert with 0, 65
    require arg16 + arg16.length + 36 <= calldata.size
    require arg17 <= test266151307()
    require arg17 + 35 < calldata.size
    require arg17.length <= test266151307()
    require arg17 + arg17.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'only admin'
    require arg12 == uint32(arg12)
    if ceil32(arg16.length) <= arg16.length:
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541 len arg17.length] = arg17[all]
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + arg17.length + 541] = 0
        require 65 == arg17.length
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 605, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16'))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16')))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 605, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16'))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16')))))))), 32))), 0) - 256 >= 27:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(arg1), address(arg2), chainid, arg12 << 224, arg3, arg4, address(this.address), Array(len=arg16.length, data=arg16[all]))), 0, mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541], mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 573]) 
        else:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(arg1), address(arg2), chainid, arg12 << 224, arg3, arg4, address(this.address), Array(len=arg16.length, data=arg16[all]))), 27, mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541], mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 573]) 
    else:
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 449] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 477] = sha3(address(arg1), address(arg2), chainid, arg12 << 224, arg3, arg4, address(this.address), Array(len=arg16.length, data=arg16[all]))
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 417] = 60
        _193 = sha3(mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 449 len Mask(8 * -ceil32(arg16.length) + arg16.length + 32, 0, 0), mem[ceil32(ceil32(arg16.length)) + arg16.length + 449 len -arg16.length + ceil32(arg16.length)]])
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541 len arg17.length] = arg17[all]
        mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + arg17.length + 541] = 0
        require 65 == arg17.length
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 605, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16'))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16')))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 605, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16'))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg16')))))))), 32))), 0) - 256 >= 27:
            signer = erecover(_193, 0, mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541], mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 573]) 
        else:
            signer = erecover(_193, 27, mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 541], mem[ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + 573]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(arg1):
        revert with 0, 
                    96,
                    address(arg1),
                    address(signer),
                    arg16.length,
                    arg16[all],
                    Mask(8 * ceil32(arg16.length) - arg16.length, -(8 * ceil32(arg16.length) + -ceil32(ceil32(arg16.length)) + 31) + 256, ceil32(arg16.length) + 288) >> -(8 * ceil32(arg16.length) + -ceil32(ceil32(arg16.length)) + 31) + 256
    if stor3[address(arg1)][arg4]:
        revert with 0, 'transfer already processed'
    require arg12 == uint32(arg12)
    if stor4[arg5][arg12 << 224]:
        revert with 0, 'transfer already processed'
    stor3[address(arg1)][arg4] = 1
    require arg12 == uint32(arg12)
    require calldata.size - 164 >= 320
    if not bool(ceil32(arg16.length) + ceil32(ceil32(arg16.length)) + ceil32(arg17.length) + 893 <= test266151307()):
        revert with 0, 65
    require arg6 == Mask(96, 0, arg6)
    require arg7 == Mask(96, 0, arg7)
    require arg8 == arg8 % 281474976710656
    require arg9 == uint8(arg9)
    require arg10 == uint8(arg10)
    require arg11 == address(arg11)
    require arg12 == uint32(arg12)
    require arg13 == uint32(arg13)
    require arg14 == arg14 % 16777216
    require arg15 == uint8(arg15)
    if owner != msg.sender:
        revert with 0, 'only admin'
    call sub_5464f3c4Address.0x2b9afa03 with:
         gas gas_remaining wei
        args address(arg2), arg6 << 160, arg9 << 248, arg8 << 208, arg7 << 160, 2 == uint8(arg10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa51a6d5d: address(arg1), address(arg2), ext_call.return_data[0], chainid, block.timestamp, Array(len=arg16.length, data=arg16[all])
}

function sub_ad02a631(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if stor5[msg.sender][arg5]:
        revert with 0, 'transfer already processed'
    staticcall sub_e7d1b42aAddress.0x68c5805e with:
            gas gas_remaining wei
           args arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not bool(ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 417 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    require ext_call.return_data[32] == ext_call.return_data[52 len 12]
    require ext_call.return_data[64] == ext_call.return_data[90 len 6]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    require ext_call.return_data[192] == ext_call.return_data[220 len 4]
    require ext_call.return_data[224] == ext_call.return_data[252 len 4]
    require ext_call.return_data[256] == ext_call.return_data[285 len 3]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    if ext_call.return_data[20 len 12] < ext_call.return_data[52 len 12]:
        revert with 0, 17
    if Mask(96, 0, ext_call.return_data[20 len 12] - ext_call.return_data[52 len 12]) and sub_33a4ea06 > -1 / Mask(96, 0, ext_call.return_data[20 len 12] - ext_call.return_data[52 len 12]):
        revert with 0, 17
    if arg4 < Mask(96, 0, ext_call.return_data[20 len 12] - ext_call.return_data[52 len 12]) * sub_33a4ea06 / 10000:
        revert with 0, 'Tax amount is less than required'
    if ext_call.return_data[172 len 20] != msg.sender:
        revert with 0, 'Invalid ownership'
    if msg.value <= stor11:
        revert with 0, 'You need to send transaction fee'
    staticcall sub_5464f3c4Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Check the token allowance'
    stor5[msg.sender][arg5] = 1
    call sub_5464f3c4Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeTokenAddress, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_5464f3c4Address)
    call sub_5464f3c4Address.0x2b0e1d79 with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_5464f3c4Address with:
       value stor11 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 3044310215
    if not return_data.size:
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 545] = ext_call.return_data[20 len 12]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 577] = ext_call.return_data[52 len 12]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 609] = ext_call.return_data[90 len 6]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 641] = ext_call.return_data[127 len 1]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 673] = ext_call.return_data[159 len 1]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 705] = ext_call.return_data[172 len 20]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 737] = ext_call.return_data[220 len 4]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 769] = ext_call.return_data[252 len 4]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 801] = ext_call.return_data[285 len 3]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 833] = ext_call.return_data[319 len 1]
        if ceil32(arg6.length) <= arg6.length:
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 1057 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 1057] = 0
            emit 0xc944987a: msg.sender, address(arg1), arg2, arg4, mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 545 len 320], block.timestamp, arg5, 576, ceil32(arg6.length) + 608, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, arg7.length, arg7[all], mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(arg6.length) + arg7.length + 1057 len ceil32(arg7.length) - arg7.length]
        else:
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 1025] = arg7.length
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 1057 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 1057] = 0
            emit 0xc944987a: msg.sender, address(arg1), arg2, arg4, mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 545 len 320], block.timestamp, arg5, 576, ceil32(arg6.length) + 608, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + arg6.length + 1057 len ceil32(arg7.length) - arg6.length + ceil32(arg6.length)]
    else:
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 546] = ext_call.return_data[20 len 12]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 578] = ext_call.return_data[52 len 12]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 610] = ext_call.return_data[90 len 6]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 642] = ext_call.return_data[127 len 1]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 674] = ext_call.return_data[159 len 1]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 706] = ext_call.return_data[172 len 20]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 738] = ext_call.return_data[220 len 4]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 770] = ext_call.return_data[252 len 4]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 802] = ext_call.return_data[285 len 3]
        mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 834] = ext_call.return_data[319 len 1]
        if ceil32(arg6.length) <= arg6.length:
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1058 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1058] = 0
            emit 0xc944987a: msg.sender, address(arg1), arg2, arg4, mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 546 len 320], block.timestamp, arg5, 576, ceil32(arg6.length) + 608, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, arg7.length, arg7[all], mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(arg6.length) + arg7.length + 1058 len ceil32(arg7.length) - arg7.length]
        else:
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1026] = arg7.length
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1058 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1058] = 0
            emit 0xc944987a: msg.sender, address(arg1), arg2, arg4, mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 546 len 320], block.timestamp, arg5, 576, ceil32(arg6.length) + 608, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg6.length + 1058 len ceil32(arg7.length) - arg6.length + ceil32(arg6.length)]
}

function swapTokens(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'only admin'
    if not arg5:
        if not arg4:
            if arg3 and 1 > -1 / arg3:
                revert with 0, 17
            staticcall address(stor2.length).WETH() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg2 == ext_call.return_data[12 len 20]:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = arg1
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 0
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(stor2.length))
                call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192] = arg3
                mem[(4 * ceil32(return_data.size)) + 224] = 64
                _1600 = mem[ceil32(return_data.size) + 96]
                mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (4 * ceil32(return_data.size)) + 288
                while idx < _1600:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                      arg3,
                                      64,
                                      mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1600) + 32],
            else:
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg1 == ext_call.return_data[12 len 20]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 160] = arg2
                    if block.timestamp > -301:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                    mem[(4 * ceil32(return_data.size)) + 228] = 128
                    mem[(4 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                    mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg3 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192] = arg3
                    mem[(4 * ceil32(return_data.size)) + 224] = 64
                    _1599 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 288
                    while idx < _1599:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          arg3,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1599) + 32],
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 192] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -121:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                    mem[(4 * ceil32(return_data.size)) + 388] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 420
                    while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1586 = mem[64]
                    mem[mem[64]] = arg3
                    mem[mem[64] + 32] = 64
                    _1598 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 96
                    while idx < _1598:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                             mem[mem[64] len _1586 + (32 * _1598) + -mem[64] + 96],
        else:
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if not 10^arg4:
                    revert with 0, 18
                if arg3 / 10^arg4 and 1 > -1 / arg3 / 10^arg4:
                    revert with 0, 17
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = arg1
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3 / 10^arg4
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3 / 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4
                    mem[(4 * ceil32(return_data.size)) + 224] = 64
                    _1597 = mem[ceil32(return_data.size) + 96]
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (4 * ceil32(return_data.size)) + 288
                    while idx < _1597:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg3 / 10^arg4,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1597) + 32],
                else:
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 260] = this.address
                        mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg3 / 10^arg4 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _1596 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 288
                        while idx < _1596:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg3 / 10^arg4,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1596) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 420
                        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1583 = mem[64]
                        mem[mem[64]] = arg3 / 10^arg4
                        mem[mem[64] + 32] = 64
                        _1595 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 96
                        while idx < _1595:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _1583 + (32 * _1595) + -mem[64] + 96],
            else:
                s = 10
                t = 1
                idx = arg4
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if arg3 / s * t and 1 > -1 / arg3 / s * t:
                    revert with 0, 17
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = arg1
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 / s * t
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3 / s * t
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3 / s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192] = arg3 / s * t
                    mem[(4 * ceil32(return_data.size)) + 224] = 64
                    _2130 = mem[ceil32(return_data.size) + 96]
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (4 * ceil32(return_data.size)) + 288
                    while idx < _2130:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg3 / s * t,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2130) + 32],
                else:
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 260] = this.address
                        mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg3 / s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / s * t
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _2129 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 288
                        while idx < _2129:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg3 / s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2129) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 / s * t
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3 / s * t
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 420
                        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2116 = mem[64]
                        mem[mem[64]] = arg3 / s * t
                        mem[mem[64] + 32] = 64
                        _2128 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 96
                        while idx < _2128:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _2116 + (32 * _2128) + -mem[64] + 96],
    else:
        if bool(bool(arg5 < 78)) or bool(bool(arg5 < 32)):
            if not arg4:
                if arg3 and 10^arg5 > -1 / arg3:
                    revert with 0, 17
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = arg1
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 * 10^arg5
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3 * 10^arg5
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3 * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192] = arg3 * 10^arg5
                    mem[(4 * ceil32(return_data.size)) + 224] = 64
                    _1594 = mem[ceil32(return_data.size) + 96]
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (4 * ceil32(return_data.size)) + 288
                    while idx < _1594:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg3 * 10^arg5,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1594) + 32],
                else:
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 260] = this.address
                        mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg3 * 10^arg5 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _1593 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 288
                        while idx < _1593:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg3 * 10^arg5,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1593) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 * 10^arg5
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 420
                        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1580 = mem[64]
                        mem[mem[64]] = arg3 * 10^arg5
                        mem[mem[64] + 32] = 64
                        _1592 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 96
                        while idx < _1592:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _1580 + (32 * _1592) + -mem[64] + 96],
            else:
                if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                    if not 10^arg4:
                        revert with 0, 18
                    if arg3 / 10^arg4 and 10^arg5 > -1 / arg3 / 10^arg4:
                        revert with 0, 17
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4 * 10^arg5
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = arg3 / 10^arg4 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / 10^arg4 * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _1591 = mem[ceil32(return_data.size) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (4 * ceil32(return_data.size)) + 288
                        while idx < _1591:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / 10^arg4 * 10^arg5,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1591) + 32],
                    else:
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = this.address
                            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / 10^arg4 * 10^arg5 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 224] = 64
                            _1590 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 288
                            while idx < _1590:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / 10^arg4 * 10^arg5,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _1590) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 3
                            mem[(2 * ceil32(return_data.size)) + 128] = arg1
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = arg2
                            mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4 * 10^arg5
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1577 = mem[64]
                            mem[mem[64]] = arg3 / 10^arg4 * 10^arg5
                            mem[mem[64] + 32] = 64
                            _1589 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 96
                            while idx < _1589:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _1577 + (32 * _1589) + -mem[64] + 96],
                else:
                    s = 10
                    t = 1
                    idx = arg4
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if arg3 / s * t and 10^arg5 > -1 / arg3 / s * t:
                        revert with 0, 17
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / s * t * 10^arg5
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = arg3 / s * t * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 128
                        v = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / s * t * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / s * t * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _2127 = mem[ceil32(return_data.size) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        u = ceil32(return_data.size) + 128
                        v = (4 * ceil32(return_data.size)) + 288
                        while idx < _2127:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / s * t * 10^arg5,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2127) + 32],
                    else:
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = this.address
                            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / s * t * 10^arg5 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192] = arg3 / s * t * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 224] = 64
                            _2126 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 288
                            while idx < _2126:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / s * t * 10^arg5,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2126) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 3
                            mem[(2 * ceil32(return_data.size)) + 128] = arg1
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = arg2
                            mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / s * t * 10^arg5
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg3 / s * t * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 420
                            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2113 = mem[64]
                            mem[mem[64]] = arg3 / s * t * 10^arg5
                            mem[mem[64] + 32] = 64
                            _2125 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 96
                            while idx < _2125:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2113 + (32 * _2125) + -mem[64] + 96],
        else:
            s = 10
            t = 1
            idx = arg5
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not arg4:
                if arg3 and s * t > -1 / arg3:
                    revert with 0, 17
                staticcall address(stor2.length).WETH() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = arg1
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 * s * t
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3 * s * t
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192] = arg3 * s * t
                    mem[(4 * ceil32(return_data.size)) + 224] = 64
                    _2124 = mem[ceil32(return_data.size) + 96]
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    u = ceil32(return_data.size) + 128
                    v = (4 * ceil32(return_data.size)) + 288
                    while idx < _2124:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg3 * s * t,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2124) + 32],
                else:
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 260] = this.address
                        mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg3 * s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 * s * t
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _2123 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 288
                        while idx < _2123:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg3 * s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2123) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 * s * t
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3 * s * t
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        u = (2 * ceil32(return_data.size)) + 128
                        v = (4 * ceil32(return_data.size)) + 420
                        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2110 = mem[64]
                        mem[mem[64]] = arg3 * s * t
                        mem[mem[64] + 32] = 64
                        _2122 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 96
                        while idx < _2122:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _2110 + (32 * _2122) + -mem[64] + 96],
            else:
                if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                    if not 10^arg4:
                        revert with 0, 18
                    if arg3 / 10^arg4 and s * t > -1 / arg3 / 10^arg4:
                        revert with 0, 17
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4 * s * t
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = arg3 / 10^arg4 * s * t
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 128
                        v = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / 10^arg4 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4 * s * t
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _2121 = mem[ceil32(return_data.size) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        u = ceil32(return_data.size) + 128
                        v = (4 * ceil32(return_data.size)) + 288
                        while idx < _2121:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / 10^arg4 * s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2121) + 32],
                    else:
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = this.address
                            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / 10^arg4 * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192] = arg3 / 10^arg4 * s * t
                            mem[(4 * ceil32(return_data.size)) + 224] = 64
                            _2120 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 288
                            while idx < _2120:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / 10^arg4 * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2120) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 3
                            mem[(2 * ceil32(return_data.size)) + 128] = arg1
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = arg2
                            mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4 * s * t
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg3 / 10^arg4 * s * t
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 420
                            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2107 = mem[64]
                            mem[mem[64]] = arg3 / 10^arg4 * s * t
                            mem[mem[64] + 32] = 64
                            _2119 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 96
                            while idx < _2119:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2107 + (32 * _2119) + -mem[64] + 96],
                else:
                    u = 10
                    v = 1
                    idx = arg4
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if not u * v:
                        revert with 0, 18
                    if arg3 / u * v and s * t > -1 / arg3 / u * v:
                        revert with 0, 17
                    staticcall address(stor2.length).WETH() with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = arg1
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / u * v * s * t
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = arg3 / u * v * s * t
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        w = ceil32(return_data.size) + 128
                        x = (4 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / u * v * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192] = arg3 / u * v * s * t
                        mem[(4 * ceil32(return_data.size)) + 224] = 64
                        _2252 = mem[ceil32(return_data.size) + 96]
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        w = ceil32(return_data.size) + 128
                        x = (4 * ceil32(return_data.size)) + 288
                        while idx < _2252:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / u * v * s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2252) + 32],
                    else:
                        staticcall address(stor2.length).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            w = (2 * ceil32(return_data.size)) + 128
                            x = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = this.address
                            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / u * v * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192] = arg3 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 224] = 64
                            _2251 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            w = (2 * ceil32(return_data.size)) + 128
                            x = (4 * ceil32(return_data.size)) + 288
                            while idx < _2251:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / u * v * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _2251) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 3
                            mem[(2 * ceil32(return_data.size)) + 128] = arg1
                            staticcall address(stor2.length).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = arg2
                            mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / u * v * s * t
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg3 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            w = (2 * ceil32(return_data.size)) + 128
                            x = (4 * ceil32(return_data.size)) + 420
                            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 512]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2247 = mem[64]
                            mem[mem[64]] = arg3 / u * v * s * t
                            mem[mem[64] + 32] = 64
                            _2250 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 96
                            while idx < _2250:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2247 + (32 * _2250) + -mem[64] + 96],
}



}
