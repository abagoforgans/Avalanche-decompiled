contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address masterTokenAddress;
address nFTContractAddress;
address sub_a15e117fAddress;
address stor3;
address stor4;
uint256 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
uint16 stor7;
uint16 stor7; offset 16
uint256 stor8;
uint256 stor9;

function sub_226ea813(?) {
    return bool(uint8(stor6.field_8))
}

function sub_271c251a(?) {
    return bool(uint8(stor6.field_0))
}

function masterToken() {
    return masterTokenAddress
}

function NFTContract() {
    return nFTContractAddress
}

function sub_a15e117f(?) {
    return sub_a15e117fAddress
}

function sub_ed3d51ef(?) {
    return bool(uint8(stor6.field_0))
}

function _fallback() payable {
    revert
}

function sub_386eae51(?) {
    return uint16(stor7.field_0), uint16(stor7.field_0), stor8, stor9
}

function sub_1f5e361f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    stor4 = address(arg1)
}

function sub_88002d09(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    stor3 = address(arg1)
}

function sub_1af610fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    masterTokenAddress = address(arg1)
}

function sub_fb9ba73a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    sub_a15e117fAddress = address(arg1)
}

function sub_7bb14266(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(uint8(stor6.field_0)):
        revert with 0, 'No Change!'
    uint8(stor6.field_0) = uint8(bool(arg1))
}

function sub_1c67072c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(uint8(stor6.field_8)):
        revert with 0, 'No Change!'
    Mask(248, 0, stor6.field_8) = Mask(248, 0, bool(arg1))
}

function AllowanceAmount() {
    staticcall masterTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9fc2db84(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if uint16(arg1):
        uint16(stor7.field_0) = uint16(arg1)
    if uint16(arg2):
        uint16(stor7.field_16) = uint16(arg2)
    return 1
}

function Withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if not stor3:
        revert with 0, 'Address cannot be Zero!'
    if arg1 <= 0:
        revert with 0, 'Amount cannot be Zero!'
    call stor3 with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function UpdateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if arg1 <= 0:
        if arg2 > 0:
            if arg2 != stor8:
                stor8 = arg2
    else:
        if arg1 != stor9:
            stor9 = arg1
        if arg2 > 0:
            if arg2 != stor8:
                stor8 = arg2
    return 1
}

function WithdrawFee() {
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    require stor5 > 0
    call masterTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor5 = 0
    return 1
}

function TransferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function splitSignature(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'invalid signature length'
    _4 = mem[160]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return mem[ceil32(ceil32(arg1.length)) + 97], _4, 0
}

function sub_7c4b3ebe(?) {
    require calldata.size - 4 >= 32
    staticcall masterTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    staticcall masterTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    return 1
}

function recoverSigner(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_55ef7a5b(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    staticcall nFTContractAddress.0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 128]
    require mem[_4 + 128] <= test266151307()
    require _4 + mem[_4 + 128] + 127 < return_data.size + 96
    _8 = mem[_4 + mem[_4 + 128] + 96]
    if mem[_4 + mem[_4 + 128] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_4 + mem[_4 + 128] + 96])) + 321 < 320 or ceil32(return_data.size) + ceil32(ceil32(mem[_4 + mem[_4 + 128] + 96])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[_4 + mem[_4 + 128] + 96])) + 417
    mem[ceil32(return_data.size) + 416] = _8
    require _4 + _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448 len ceil32(_8)] = mem[_4 + _7 + 128 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 416
        require mem[_4 + 160] == mem[_4 + 172 len 20]
        mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
        require mem[_4 + 192] == mem[_4 + 204 len 20]
        mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
        require return_data.size + -_4 - 128 >= 96
        _54 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[_4 + 224] == mem[_4 + 236 len 20]
        mem[_54] = mem[_4 + 224]
        mem[_54 + 32] = mem[_4 + 256]
        require mem[_4 + 288] == mem[_4 + 316 len 4]
        mem[_54 + 64] = mem[_4 + 288]
        mem[ceil32(return_data.size) + 224] = _54
        mem[ceil32(return_data.size) + 256] = mem[_4 + 320]
        require mem[_4 + 352] < 3
        mem[ceil32(return_data.size) + 288] = mem[_4 + 352]
        mem[ceil32(return_data.size) + 320] = mem[_4 + 384]
        require mem[_4 + 416] == mem[_4 + 447 len 1]
        mem[ceil32(return_data.size) + 352] = mem[_4 + 416]
        require mem[_4 + 448] == mem[_4 + 479 len 1]
        mem[ceil32(return_data.size) + 384] = mem[_4 + 448]
        _72 = mem[ceil32(return_data.size) + 256]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + 256]
        staticcall nFTContractAddress.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, _72
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_77] == mem[_77 + 12 len 20]
        _82 = mem[_77 + 32]
        mem[mem[64]] = mem[_77 + 12 len 20]
        return mem[mem[64]], _82
    mem[ceil32(return_data.size) + _8 + 448] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 416
    require mem[_4 + 160] == mem[_4 + 172 len 20]
    mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
    require mem[_4 + 192] == mem[_4 + 204 len 20]
    mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
    require return_data.size + -_4 - 128 >= 96
    _56 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    require mem[_4 + 224] == mem[_4 + 236 len 20]
    mem[_56] = mem[_4 + 224]
    mem[_56 + 32] = mem[_4 + 256]
    require mem[_4 + 288] == mem[_4 + 316 len 4]
    mem[_56 + 64] = mem[_4 + 288]
    mem[ceil32(return_data.size) + 224] = _56
    mem[ceil32(return_data.size) + 256] = mem[_4 + 320]
    require mem[_4 + 352] < 3
    mem[ceil32(return_data.size) + 288] = mem[_4 + 352]
    mem[ceil32(return_data.size) + 320] = mem[_4 + 384]
    require mem[_4 + 416] == mem[_4 + 447 len 1]
    mem[ceil32(return_data.size) + 352] = mem[_4 + 416]
    require mem[_4 + 448] == mem[_4 + 479 len 1]
    mem[ceil32(return_data.size) + 384] = mem[_4 + 448]
    _75 = mem[ceil32(return_data.size) + 256]
    mem[mem[64] + 36] = mem[ceil32(return_data.size) + 256]
    staticcall nFTContractAddress.royaltyInfo(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, _75
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    require mem[_79] == mem[_79 + 12 len 20]
    _83 = mem[_79 + 32]
    mem[mem[64]] = mem[_79 + 12 len 20]
    return mem[mem[64]], _83
}

function sub_99e793d9(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == uint32(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'Address cannot be zero!'
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = arg3 << 224
    mem[96] = 68
    mem[228] = '\x19Ethereum Signed Message:\n32'
    mem[256] = sha3(arg1, arg2, uint32(arg3))
    mem[196] = 60
    mem[288] = arg4.length
    mem[320 len arg4.length] = arg4[all]
    mem[arg4.length + 320] = 0
    if arg4.length != 65:
        revert with 0, 'invalid signature length'
    mem[ceil32(arg4.length) + 384] = 0
    mem[ceil32(arg4.length) + 416] = mem[320]
    mem[ceil32(arg4.length) + 448] = mem[352]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2, uint32(arg3))), 0, mem[320], mem[352]) 
    mem[ceil32(arg4.length) + 320] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor4:
        revert with 0, 'Err!'
    mem[ceil32(arg4.length) + 356] = arg1
    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg4.length) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] != msg.sender
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg1
    staticcall nFTContractAddress.0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _29 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool(ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 672 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 672
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352]
    _32 = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384]
    require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] <= test266151307()
    require ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 383 < ceil32(arg4.length) + ceil32(return_data.size) + return_data.size + 352
    _33 = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 352]
    if mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 352] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 352])) + 321 < 320 or ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 352])) + 673 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 384] + 352])) + 673
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 672] = _33
    require _29 + _32 + _33 + 32 <= return_data.size
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 704 len ceil32(_33)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + _32 + 384 len ceil32(_33)]
    if ceil32(_33) <= _33:
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 672
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 416] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 428 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 416]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 448] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 460 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 448]
        require return_data.size + -_29 - 128 >= 96
        _339 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 480] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 492 len 20]
        mem[_339] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 480]
        mem[_339 + 32] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 512]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 544] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572 len 4]
        mem[_339 + 64] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 544]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = _339
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 576]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 608] < 3
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 544] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 608]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 576] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 640]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 672] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 703 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 672]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 704] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 735 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 704]
        if block.timestamp <= mem[_339 + 32]:
            revert with 0, 'NFT already rented'
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_366] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _375 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_375] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_401] == bool(mem[_401])
        mem[_339] = msg.sender
        if uint32(arg3) > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * uint32(arg3)):
            revert with 0, 17
        mem[_339 + 32] = block.timestamp + uint32(3600 * uint32(arg3))
        mem[_339 + 64] = uint32(arg3)
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 544] = 2
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor9):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor9
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor9)
        call masterTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _451 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_451] == bool(mem[_451])
    else:
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + _33 + 704] = 0
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 672
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 416] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 428 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 416]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 448] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 460 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 448]
        require return_data.size + -_29 - 128 >= 96
        _341 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 480] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 492 len 20]
        mem[_341] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 480]
        mem[_341 + 32] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 512]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 544] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572 len 4]
        mem[_341 + 64] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 544]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = _341
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 576]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 608] < 3
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 544] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 608]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 576] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 640]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 672] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 703 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 672]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 704] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 735 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 704]
        if block.timestamp <= mem[_341 + 32]:
            revert with 0, 'NFT already rented'
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_370] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_381] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _412 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_412] == bool(mem[_412])
        mem[_341] = msg.sender
        if uint32(arg3) > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * uint32(arg3)):
            revert with 0, 17
        mem[_341 + 32] = block.timestamp + uint32(3600 * uint32(arg3))
        mem[_341 + 64] = uint32(arg3)
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 544] = 2
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor9):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor9
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor9)
        call masterTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _461 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_461] == bool(mem[_461])
    mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
    mem[mem[64] + 100] = 384
    mem[mem[64] + 452] = _33
    mem[mem[64] + 484 len ceil32(_33)] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 704 len ceil32(_33)]
    if ceil32(_33) > _33:
        mem[mem[64] + _33 + 484] = 0
    mem[mem[64] + 132] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 428 len 20]
    mem[mem[64] + 164] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 460 len 20]
    mem[mem[64] + 196] = msg.sender
    mem[mem[64] + 228] = block.timestamp + uint32(3600 * uint32(arg3))
    mem[mem[64] + 260] = 0
    mem[mem[64] + 292] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
    mem[mem[64] + 324] = 2
    mem[mem[64] + 356] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 576]
    mem[mem[64] + 388] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 639 len 1]
    mem[mem[64] + 420] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 671 len 1]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x29a90305 with:
         gas gas_remaining wei
        args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 64], msg.sender, block.timestamp + uint32(3600 * uint32(arg3)), 0, mem[mem[64] + 292], 2, mem[mem[64] + 356 len 96], _33, mem[mem[64] + 484 len ceil32(_33)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_140fb4a7(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'Address cannot be zero!'
    mem[128] = arg1
    mem[160] = arg2
    mem[96] = 64
    mem[224] = '\x19Ethereum Signed Message:\n32'
    mem[252] = sha3(arg1, arg2)
    mem[192] = 60
    mem[284] = arg3.length
    mem[316 len arg3.length] = arg3[all]
    mem[arg3.length + 316] = 0
    if arg3.length != 65:
        revert with 0, 'invalid signature length'
    mem[ceil32(arg3.length) + 380] = 0
    mem[ceil32(arg3.length) + 412] = mem[316]
    mem[ceil32(arg3.length) + 444] = mem[348]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), 0, mem[316], mem[348]) 
    mem[ceil32(arg3.length) + 316] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor4:
        revert with 0, 'Err!'
    mem[ceil32(arg3.length) + 352] = arg1
    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg3.length) + 348] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] != msg.sender
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 348] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352] = arg1
    staticcall nFTContractAddress.0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 348 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _29 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 348 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(arg3.length) + ceil32(return_data.size) + 348 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(arg3.length) + ceil32(return_data.size) + 348 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool(ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668
    mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 348] = mem[ceil32(arg3.length) + ceil32(return_data.size) + mem[ceil32(arg3.length) + ceil32(return_data.size) + 348 len 4], Mask(224, 32, arg1) >> 32 + 348]
    _32 = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380]
    require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] <= test266151307()
    require ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 379 < ceil32(arg3.length) + ceil32(return_data.size) + return_data.size + 348
    _33 = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 348]
    if mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 348] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 348])) + 321 < 320 or ceil32(arg3.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 348])) + 669 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg3.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 380] + 348])) + 669
    mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668] = _33
    require _29 + _32 + _33 + 32 <= return_data.size
    mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 700 len ceil32(_33)] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + _32 + 380 len ceil32(_33)]
    if ceil32(_33) <= _33:
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 380] = ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 424 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 412] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 456 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 444] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444]
        require return_data.size + -_29 - 128 >= 96
        _847 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[_847] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476]
        mem[_847 + 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 508]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 568 len 4]
        mem[_847 + 64] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 476] = _847
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 508] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 572]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604] < 3
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 636]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 699 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _867 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_867] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _875 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_875] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _900 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_900] == bool(mem[_900])
        if arg2 / 10000 and stor8 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor8):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor8
        mem[mem[64] + 36] = arg2
        staticcall nFTContractAddress.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _933 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_933] == mem[_933 + 12 len 20]
        _946 = mem[_933 + 32]
        if mem[_933 + 32] <= 0:
            if arg2 < arg2 / 10000 * stor8:
                revert with 0, 17
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
            call masterTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _993 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_993] == bool(mem[_993])
        else:
            if address(ext_call.return_data[0]) == mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]:
                if arg2 < arg2 / 10000 * stor8:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1009 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1009] == bool(mem[_1009])
            else:
                if arg2 / 10000 * stor8 > !mem[_933 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
                mem[mem[64] + 36] = _946
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _946
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1010] == bool(mem[_1010])
                if arg2 < (arg2 / 10000 * stor8) + _946:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8) - _946
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8) - _946
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1200] == bool(mem[_1200])
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = 0
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 348]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _33
        mem[mem[64] + 484 len ceil32(_33)] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 700 len ceil32(_33)]
        if ceil32(_33) > _33:
            mem[mem[64] + _33 + 484] = 0
        mem[mem[64] + 132] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
        mem[mem[64] + 164] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 456 len 20]
        mem[mem[64] + 196] = mem[_847 + 12 len 20]
        mem[mem[64] + 228] = mem[_847 + 32]
        mem[mem[64] + 260] = mem[_847 + 92 len 4]
    else:
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + _33 + 700] = 0
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 380] = ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 424 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 412] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 456 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 444] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444]
        require return_data.size + -_29 - 128 >= 96
        _849 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[_849] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476]
        mem[_849 + 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 508]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 568 len 4]
        mem[_849 + 64] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 476] = _849
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 508] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 572]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604] < 3
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 636]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 699 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _870 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_870] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _881 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_881] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _910 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_910] == bool(mem[_910])
        if arg2 / 10000 and stor8 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor8):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor8
        mem[mem[64] + 36] = arg2
        staticcall nFTContractAddress.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, arg2
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _940 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_940] == mem[_940 + 12 len 20]
        _950 = mem[_940 + 32]
        if mem[_940 + 32] <= 0:
            if arg2 < arg2 / 10000 * stor8:
                revert with 0, 17
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
            call masterTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1020] == bool(mem[_1020])
        else:
            if address(ext_call.return_data[0]) == mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]:
                if arg2 < arg2 / 10000 * stor8:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1034] == bool(mem[_1034])
            else:
                if arg2 / 10000 * stor8 > !mem[_940 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
                mem[mem[64] + 36] = _950
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _950
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1035] == bool(mem[_1035])
                if arg2 < (arg2 / 10000 * stor8) + _950:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8) - _950
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8) - _950
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1240] == bool(mem[_1240])
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = 0
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 348]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _33
        mem[mem[64] + 484 len ceil32(_33)] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 700 len ceil32(_33)]
        if ceil32(_33) > _33:
            mem[mem[64] + _33 + 484] = 0
        mem[mem[64] + 132] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
        mem[mem[64] + 164] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 456 len 20]
        mem[mem[64] + 196] = mem[_849 + 12 len 20]
        mem[mem[64] + 228] = mem[_849 + 32]
        mem[mem[64] + 260] = mem[_849 + 92 len 4]
    mem[mem[64] + 292] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 508]
    mem[mem[64] + 324] = 0
    mem[mem[64] + 356] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 572]
    mem[mem[64] + 388] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 635 len 1]
    mem[mem[64] + 420] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 667 len 1]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x29a90305 with:
         gas gas_remaining wei
        args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 192], 0, mem[mem[64] + 356 len 96], _33, mem[mem[64] + 484 len ceil32(_33)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.transferToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyCollection(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Address cannot be zero!'
    if bool(uint8(stor6.field_8)) != 1:
        revert with 0, 'Sales are currently closed'
    mem[96] = 0x6b05677b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    staticcall sub_a15e117fAddress.0x6b05677b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 352
    if not bool(ceil32(return_data.size) + 448 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 448
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _11 = mem[_8 + 128]
    require mem[_8 + 128] <= test266151307()
    require _8 + mem[_8 + 128] + 127 < return_data.size + 96
    _12 = mem[_8 + mem[_8 + 128] + 96]
    if mem[_8 + mem[_8 + 128] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_8 + mem[_8 + 128] + 96])) + 353 < 352 or ceil32(return_data.size) + ceil32(ceil32(mem[_8 + mem[_8 + 128] + 96])) + 449 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[_8 + mem[_8 + 128] + 96])) + 449
    mem[ceil32(return_data.size) + 448] = mem[_8 + mem[_8 + 128] + 96]
    require _8 + _11 + _12 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 480 len ceil32(_12)] = mem[_8 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 448
        mem[ceil32(return_data.size) + 160] = mem[_8 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_8 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_8 + 224]
        require mem[_8 + 256] == mem[_8 + 287 len 1]
        mem[ceil32(return_data.size) + 256] = mem[_8 + 256]
        require mem[_8 + 288] == mem[_8 + 318 len 2]
        mem[ceil32(return_data.size) + 288] = mem[_8 + 288]
        require mem[_8 + 320] == mem[_8 + 350 len 2]
        mem[ceil32(return_data.size) + 320] = mem[_8 + 320]
        require mem[_8 + 352] == bool(mem[_8 + 352])
        mem[ceil32(return_data.size) + 352] = mem[_8 + 352]
        require mem[_8 + 384] == mem[_8 + 415 len 1]
        mem[ceil32(return_data.size) + 384] = mem[_8 + 384]
        mem[ceil32(return_data.size) + 416] = mem[_8 + 416]
        if mem[ceil32(return_data.size) + 318 len 2] <= 0:
            revert with 0, 'NFT, Out of stock'
        if bool(mem[ceil32(return_data.size) + 352]) != 1:
            revert with 0, 'NFT, Out of stock'
        if msg.value:
            if msg.value < mem[ceil32(return_data.size) + 192]:
                revert with 0, 'You don't have enough balance!'
            if mem[ceil32(return_data.size) + 318 len 2] < 1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 288] = uint16(mem[ceil32(return_data.size) + 318 len 2] - 1)
            mem[mem[64]] = 0x41c5d73f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = 352
            _540 = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 388] = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 420 len ceil32(_540)] = mem[ceil32(return_data.size) + 480 len ceil32(_540)]
            if ceil32(_540) <= _540:
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_540) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1143 = mem[ceil32(return_data.size) + 224]
                _1144 = mem[ceil32(return_data.size) + 256]
                _1145 = mem[ceil32(return_data.size) + 384]
                _1146 = mem[ceil32(return_data.size) + 416]
                _1147 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1223 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1223)] = mem[ceil32(return_data.size) + 480 len ceil32(_1223)]
                if ceil32(_1223) <= _1223:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1143, _1144 << 248, _1145 << 248, _1146, mem[mem[64] + 228 len ceil32(_1223) + 32]
                else:
                    mem[mem[64] + _1223 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1147 + 100] = _1143
                    mem[_1147 + 132] = uint8(_1144)
                    mem[_1147 + 164] = uint8(_1145)
                    mem[_1147 + 196] = _1146
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1223) + _1147 + -mem[64] + 256]
            else:
                mem[mem[64] + _540 + 420] = 0
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_540) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[ceil32(return_data.size) + 224]
                _1192 = mem[ceil32(return_data.size) + 256]
                _1193 = mem[ceil32(return_data.size) + 384]
                _1194 = mem[ceil32(return_data.size) + 416]
                _1195 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1231 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1231)] = mem[ceil32(return_data.size) + 480 len ceil32(_1231)]
                if ceil32(_1231) <= _1231:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1191, _1192 << 248, _1193 << 248, _1194, mem[mem[64] + 228 len ceil32(_1231) + 32]
                else:
                    mem[mem[64] + _1231 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1195 + 100] = _1191
                    mem[_1195 + 132] = uint8(_1192)
                    mem[_1195 + 164] = uint8(_1193)
                    mem[_1195 + 196] = _1194
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1231) + _1195 + -mem[64] + 256]
        else:
            _512 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            staticcall masterTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_523] < _512:
                revert with 0, 'You don't have enough or confirmed balance!'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            staticcall masterTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _543 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_543] < _512:
                revert with 0, 'You don't have enough or confirmed balance!'
            _594 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _594
            call masterTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, _594
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_604] == bool(mem[_604])
            if stor5 > !mem[ceil32(return_data.size) + 160]:
                revert with 0, 17
            stor5 += mem[ceil32(return_data.size) + 160]
            if mem[ceil32(return_data.size) + 318 len 2] < 1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 288] = uint16(mem[ceil32(return_data.size) + 318 len 2] - 1)
            mem[mem[64]] = 0x41c5d73f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = 352
            _715 = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 388] = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 420 len ceil32(_715)] = mem[ceil32(return_data.size) + 480 len ceil32(_715)]
            if ceil32(_715) <= _715:
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_715) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1137 = mem[ceil32(return_data.size) + 224]
                _1138 = mem[ceil32(return_data.size) + 256]
                _1139 = mem[ceil32(return_data.size) + 384]
                _1140 = mem[ceil32(return_data.size) + 416]
                _1141 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1222 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1222)] = mem[ceil32(return_data.size) + 480 len ceil32(_1222)]
                if ceil32(_1222) <= _1222:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1137, _1138 << 248, _1139 << 248, _1140, mem[mem[64] + 228 len ceil32(_1222) + 32]
                else:
                    mem[mem[64] + _1222 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1141 + 100] = _1137
                    mem[_1141 + 132] = uint8(_1138)
                    mem[_1141 + 164] = uint8(_1139)
                    mem[_1141 + 196] = _1140
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1222) + _1141 + -mem[64] + 256]
            else:
                mem[mem[64] + _715 + 420] = 0
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_715) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1185 = mem[ceil32(return_data.size) + 224]
                _1186 = mem[ceil32(return_data.size) + 256]
                _1187 = mem[ceil32(return_data.size) + 384]
                _1188 = mem[ceil32(return_data.size) + 416]
                _1189 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1230 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1230)] = mem[ceil32(return_data.size) + 480 len ceil32(_1230)]
                if ceil32(_1230) <= _1230:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1185, _1186 << 248, _1187 << 248, _1188, mem[mem[64] + 228 len ceil32(_1230) + 32]
                else:
                    mem[mem[64] + _1230 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1189 + 100] = _1185
                    mem[_1189 + 132] = uint8(_1186)
                    mem[_1189 + 164] = uint8(_1187)
                    mem[_1189 + 196] = _1188
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1230) + _1189 + -mem[64] + 256]
    else:
        mem[ceil32(return_data.size) + _12 + 480] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 448
        mem[ceil32(return_data.size) + 160] = mem[_8 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_8 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_8 + 224]
        require mem[_8 + 256] == mem[_8 + 287 len 1]
        mem[ceil32(return_data.size) + 256] = mem[_8 + 256]
        require mem[_8 + 288] == mem[_8 + 318 len 2]
        mem[ceil32(return_data.size) + 288] = mem[_8 + 288]
        require mem[_8 + 320] == mem[_8 + 350 len 2]
        mem[ceil32(return_data.size) + 320] = mem[_8 + 320]
        require mem[_8 + 352] == bool(mem[_8 + 352])
        mem[ceil32(return_data.size) + 352] = mem[_8 + 352]
        require mem[_8 + 384] == mem[_8 + 415 len 1]
        mem[ceil32(return_data.size) + 384] = mem[_8 + 384]
        mem[ceil32(return_data.size) + 416] = mem[_8 + 416]
        if mem[ceil32(return_data.size) + 318 len 2] <= 0:
            revert with 0, 'NFT, Out of stock'
        if bool(mem[ceil32(return_data.size) + 352]) != 1:
            revert with 0, 'NFT, Out of stock'
        if msg.value:
            if msg.value < mem[ceil32(return_data.size) + 192]:
                revert with 0, 'You don't have enough balance!'
            if mem[ceil32(return_data.size) + 318 len 2] < 1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 288] = uint16(mem[ceil32(return_data.size) + 318 len 2] - 1)
            mem[mem[64]] = 0x41c5d73f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = 352
            _546 = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 388] = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 420 len ceil32(_546)] = mem[ceil32(return_data.size) + 480 len ceil32(_546)]
            if ceil32(_546) <= _546:
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_546) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[ceil32(return_data.size) + 224]
                _1168 = mem[ceil32(return_data.size) + 256]
                _1169 = mem[ceil32(return_data.size) + 384]
                _1170 = mem[ceil32(return_data.size) + 416]
                _1171 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1227 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1227)] = mem[ceil32(return_data.size) + 480 len ceil32(_1227)]
                if ceil32(_1227) <= _1227:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1167, _1168 << 248, _1169 << 248, _1170, mem[mem[64] + 228 len ceil32(_1227) + 32]
                else:
                    mem[mem[64] + _1227 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1171 + 100] = _1167
                    mem[_1171 + 132] = uint8(_1168)
                    mem[_1171 + 164] = uint8(_1169)
                    mem[_1171 + 196] = _1170
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1227) + _1171 + -mem[64] + 256]
            else:
                mem[mem[64] + _546 + 420] = 0
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_546) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1215 = mem[ceil32(return_data.size) + 224]
                _1216 = mem[ceil32(return_data.size) + 256]
                _1217 = mem[ceil32(return_data.size) + 384]
                _1218 = mem[ceil32(return_data.size) + 416]
                _1219 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1235 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1235)] = mem[ceil32(return_data.size) + 480 len ceil32(_1235)]
                if ceil32(_1235) <= _1235:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1215, _1216 << 248, _1217 << 248, _1218, mem[mem[64] + 228 len ceil32(_1235) + 32]
                else:
                    mem[mem[64] + _1235 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1219 + 100] = _1215
                    mem[_1219 + 132] = uint8(_1216)
                    mem[_1219 + 164] = uint8(_1217)
                    mem[_1219 + 196] = _1218
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1235) + _1219 + -mem[64] + 256]
        else:
            _520 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            staticcall masterTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _529 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_529] < _520:
                revert with 0, 'You don't have enough or confirmed balance!'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            staticcall masterTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _551 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_551] < _520:
                revert with 0, 'You don't have enough or confirmed balance!'
            _612 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _612
            call masterTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, _612
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _623 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_623] == bool(mem[_623])
            if stor5 > !mem[ceil32(return_data.size) + 160]:
                revert with 0, 17
            stor5 += mem[ceil32(return_data.size) + 160]
            if mem[ceil32(return_data.size) + 318 len 2] < 1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 288] = uint16(mem[ceil32(return_data.size) + 318 len 2] - 1)
            mem[mem[64]] = 0x41c5d73f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = 352
            _734 = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 388] = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 420 len ceil32(_734)] = mem[ceil32(return_data.size) + 480 len ceil32(_734)]
            if ceil32(_734) <= _734:
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_734) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[ceil32(return_data.size) + 224]
                _1162 = mem[ceil32(return_data.size) + 256]
                _1163 = mem[ceil32(return_data.size) + 384]
                _1164 = mem[ceil32(return_data.size) + 416]
                _1165 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1226 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1226)] = mem[ceil32(return_data.size) + 480 len ceil32(_1226)]
                if ceil32(_1226) <= _1226:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1161, _1162 << 248, _1163 << 248, _1164, mem[mem[64] + 228 len ceil32(_1226) + 32]
                else:
                    mem[mem[64] + _1226 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1165 + 100] = _1161
                    mem[_1165 + 132] = uint8(_1162)
                    mem[_1165 + 164] = uint8(_1163)
                    mem[_1165 + 196] = _1164
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1226) + _1165 + -mem[64] + 256]
            else:
                mem[mem[64] + _734 + 420] = 0
                mem[mem[64] + 100] = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 192]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 224]
                mem[mem[64] + 196] = mem[ceil32(return_data.size) + 287 len 1]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 318 len 2]
                mem[mem[64] + 260] = mem[ceil32(return_data.size) + 350 len 2]
                mem[mem[64] + 292] = bool(mem[ceil32(return_data.size) + 352])
                mem[mem[64] + 324] = mem[ceil32(return_data.size) + 415 len 1]
                mem[mem[64] + 356] = mem[ceil32(return_data.size) + 416]
                require ext_code.size(sub_a15e117fAddress)
                call sub_a15e117fAddress.0x41c5d73f with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len ceil32(_734) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1209 = mem[ceil32(return_data.size) + 224]
                _1210 = mem[ceil32(return_data.size) + 256]
                _1211 = mem[ceil32(return_data.size) + 384]
                _1212 = mem[ceil32(return_data.size) + 416]
                _1213 = mem[64]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                _1234 = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 228] = mem[ceil32(return_data.size) + 448]
                mem[mem[64] + 260 len ceil32(_1234)] = mem[ceil32(return_data.size) + 480 len ceil32(_1234)]
                if ceil32(_1234) <= _1234:
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args msg.sender, 224, 0, _1209, _1210 << 248, _1211 << 248, _1212, mem[mem[64] + 228 len ceil32(_1234) + 32]
                else:
                    mem[mem[64] + _1234 + 260] = 0
                    mem[mem[64] + 68] = 0
                    mem[_1213 + 100] = _1209
                    mem[_1213 + 132] = uint8(_1210)
                    mem[_1213 + 164] = uint8(_1211)
                    mem[_1213 + 196] = _1212
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.0x4e5f67d4 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1234) + _1213 + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
