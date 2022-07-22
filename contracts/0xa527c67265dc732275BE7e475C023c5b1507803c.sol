contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address masterTokenAddress;
address nFTContractAddress;
address sub_a15e117fAddress;
address stor3;
address stor4;
uint256 stor5;
uint8 sub_ed3d51ef;
uint8 sub_226ea813; offset 8
uint256 stor6; offset 8
uint16 stor7;
uint16 stor7; offset 16
uint256 stor8;
uint256 stor9;

function sub_226ea813(?) {
    return bool(sub_226ea813)
}

function sub_271c251a(?) {
    return bool(sub_ed3d51ef)
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
    return bool(sub_ed3d51ef)
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

function sub_1c67072c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(sub_226ea813):
        revert with 0, 'No Change!'
    stor6 = Mask(248, 0, bool(arg1))
}

function sub_7bb14266(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(sub_ed3d51ef):
        revert with 0, 'No Change!'
    sub_ed3d51ef = uint8(bool(arg1))
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

function AllowanceAmount() {
    staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
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
    call arg1.transfer(address arg1, uint256 arg2) with:
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
    staticcall masterTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
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
    mem[ceil32(return_data.size) + 416] = mem[_4 + mem[_4 + 128] + 96]
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

function sub_d1e30693(?) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Address cannot be zero!'
    mem[100] = arg1
    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] != msg.sender
    mem[ceil32(return_data.size) + 96] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall nFTContractAddress.0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool((2 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 416
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _13 = mem[ceil32(return_data.size) + _10 + 128]
    require mem[ceil32(return_data.size) + _10 + 128] <= test266151307()
    require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _14 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96]
    if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 321 < 320 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 417
    mem[(2 * ceil32(return_data.size)) + 416] = _14
    require _10 + _13 + _14 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_14)] = mem[ceil32(return_data.size) + _10 + _13 + 128 len ceil32(_14)]
    if ceil32(_14) <= _14:
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _10 + 160] == mem[ceil32(return_data.size) + _10 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
        require mem[ceil32(return_data.size) + _10 + 192] == mem[ceil32(return_data.size) + _10 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _10 + 192]
        require return_data.size + -_10 - 128 >= 96
        _352 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
        mem[_352] = mem[ceil32(return_data.size) + _10 + 224]
        mem[_352 + 32] = mem[ceil32(return_data.size) + _10 + 256]
        require mem[ceil32(return_data.size) + _10 + 288] == mem[ceil32(return_data.size) + _10 + 316 len 4]
        mem[_352 + 64] = mem[ceil32(return_data.size) + _10 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _352
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 320]
        require mem[ceil32(return_data.size) + _10 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 384]
        require mem[ceil32(return_data.size) + _10 + 416] == mem[ceil32(return_data.size) + _10 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 416]
        require mem[ceil32(return_data.size) + _10 + 448] == mem[ceil32(return_data.size) + _10 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 2:
            revert with 0, 'NFT is not in Rent mode'
        if mem[_352 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_352 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        _380 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _387 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_387] < _380:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _396 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_396] < _380:
            revert with 0, 'You don't have enough or confirmed balance!'
        _419 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _419
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _419
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _436 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_436] == bool(mem[_436])
        mem[_352] = msg.sender
        if mem[_352 + 92 len 4] > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * mem[_352 + 92 len 4]):
            revert with 0, 17
        mem[_352 + 32] = block.timestamp + uint32(3600 * mem[_352 + 92 len 4])
        _469 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor9 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor5 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9):
            revert with 0, 17
        stor5 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9
        _482 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _482 - (_469 / 10000 * stor9)
        call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _482 - (_469 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_496] == bool(mem[_496])
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _14
        mem[mem[64] + 484 len ceil32(_14)] = mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_14)]
        if ceil32(_14) > _14:
            mem[mem[64] + _14 + 484] = 0
        mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = mem[_352 + 32]
        mem[mem[64] + 260] = mem[_352 + 92 len 4]
    else:
        mem[(2 * ceil32(return_data.size)) + _14 + 448] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _10 + 160] == mem[ceil32(return_data.size) + _10 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
        require mem[ceil32(return_data.size) + _10 + 192] == mem[ceil32(return_data.size) + _10 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _10 + 192]
        require return_data.size + -_10 - 128 >= 96
        _354 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
        mem[_354] = mem[ceil32(return_data.size) + _10 + 224]
        mem[_354 + 32] = mem[ceil32(return_data.size) + _10 + 256]
        require mem[ceil32(return_data.size) + _10 + 288] == mem[ceil32(return_data.size) + _10 + 316 len 4]
        mem[_354 + 64] = mem[ceil32(return_data.size) + _10 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _354
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 320]
        require mem[ceil32(return_data.size) + _10 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 384]
        require mem[ceil32(return_data.size) + _10 + 416] == mem[ceil32(return_data.size) + _10 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 416]
        require mem[ceil32(return_data.size) + _10 + 448] == mem[ceil32(return_data.size) + _10 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 2:
            revert with 0, 'NFT is not in Rent mode'
        if mem[_354 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_354 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        _385 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_391] < _385:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_402] < _385:
            revert with 0, 'You don't have enough or confirmed balance!'
        _425 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _425
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _425
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_445] == bool(mem[_445])
        mem[_354] = msg.sender
        if mem[_354 + 92 len 4] > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * mem[_354 + 92 len 4]):
            revert with 0, 17
        mem[_354 + 32] = block.timestamp + uint32(3600 * mem[_354 + 92 len 4])
        _473 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor9 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor5 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9):
            revert with 0, 17
        stor5 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9
        _486 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _486 - (_473 / 10000 * stor9)
        call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _486 - (_473 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _506 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_506] == bool(mem[_506])
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _14
        mem[mem[64] + 484 len ceil32(_14)] = mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_14)]
        if ceil32(_14) > _14:
            mem[mem[64] + _14 + 484] = 0
        mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = mem[_354 + 32]
        mem[mem[64] + 260] = mem[_354 + 92 len 4]
    mem[mem[64] + 292] = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 288] >= 3:
        revert with 0, 33
    mem[mem[64] + 324] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 356] = mem[(2 * ceil32(return_data.size)) + 320]
    mem[mem[64] + 388] = mem[(2 * ceil32(return_data.size)) + 383 len 1]
    mem[mem[64] + 420] = mem[(2 * ceil32(return_data.size)) + 415 len 1]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x29a90305 with:
         gas gas_remaining wei
        args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 64], msg.sender, mem[mem[64] + 228 len 224], _14, mem[mem[64] + 484 len ceil32(_14)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6ef383c6(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'Address cannot be zero!'
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = arg3
    mem[96] = 96
    mem[256] = '\x19Ethereum Signed Message:\n32'
    mem[284] = sha3(arg1, arg2, arg3)
    mem[224] = 60
    mem[316] = arg4.length
    mem[348 len arg4.length] = arg4[all]
    mem[arg4.length + 348] = 0
    if arg4.length != 65:
        revert with 0, 'invalid signature length'
    mem[ceil32(arg4.length) + 412] = 0
    mem[ceil32(arg4.length) + 444] = mem[348]
    mem[ceil32(arg4.length) + 476] = mem[380]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2, arg3)), 0, mem[348], mem[380]) 
    mem[ceil32(arg4.length) + 348] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor4:
        revert with 0, 'Err!'
    mem[ceil32(arg4.length) + 384] = arg1
    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg4.length) + 380] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] != msg.sender
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 380] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 384] = arg1
    staticcall nFTContractAddress.0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 380 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _29 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 380 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(arg4.length) + ceil32(return_data.size) + 380 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(arg4.length) + ceil32(return_data.size) + 380 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool(ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 700 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 700
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 380] = mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 380 len 4], Mask(224, 32, arg1) >> 32 + 380]
    _32 = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412]
    require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] <= test266151307()
    require ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 411 < ceil32(arg4.length) + ceil32(return_data.size) + return_data.size + 380
    _33 = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 380]
    if mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 380] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 380])) + 321 < 320 or ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 380])) + 701 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 412] + 380])) + 701
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 700] = _33
    require _29 + _32 + _33 + 32 <= return_data.size
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 732 len ceil32(_33)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + _32 + 412 len ceil32(_33)]
    if ceil32(_33) <= _33:
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 412] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 700
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 444] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 456 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 444] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 444]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 476] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 476]
        require return_data.size + -_29 - 128 >= 96
        _333 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 508] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 520 len 20]
        mem[_333] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 508]
        mem[_333 + 32] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 540]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 600 len 4]
        mem[_333 + 64] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 508] = _333
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 604]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 636] < 3
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 636]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 700]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 732] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 763 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 668] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 732]
        if mem[_333 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_333 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_360] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_369] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_401] == bool(mem[_401])
        mem[_333] = msg.sender
        if arg3 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
            revert with 0, 17
        if block.timestamp > !(3600 * arg3):
            revert with 0, 17
        mem[_333 + 32] = block.timestamp + (3600 * arg3)
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor9):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor9
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor9)
        call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_439] == bool(mem[_439])
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 380]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _33
        mem[mem[64] + 484 len ceil32(_33)] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 732 len ceil32(_33)]
        if ceil32(_33) > _33:
            mem[mem[64] + _33 + 484] = 0
        mem[mem[64] + 132] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 456 len 20]
        mem[mem[64] + 164] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 488 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = block.timestamp + (3600 * arg3)
        mem[mem[64] + 260] = mem[_333 + 92 len 4]
    else:
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + _33 + 732] = 0
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 412] = ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 700
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 444] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 456 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 444] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 444]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 476] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 476]
        require return_data.size + -_29 - 128 >= 96
        _335 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 508] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 520 len 20]
        mem[_335] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 508]
        mem[_335 + 32] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 540]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 600 len 4]
        mem[_335 + 64] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 572]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 508] = _335
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 604]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 636] < 3
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 636]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 700]
        require mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 732] == mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 763 len 1]
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 668] = mem[ceil32(arg4.length) + ceil32(return_data.size) + _29 + 732]
        if mem[_335 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_335 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _364 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_364] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_374] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_408] == bool(mem[_408])
        mem[_335] = msg.sender
        if arg3 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
            revert with 0, 17
        if block.timestamp > !(3600 * arg3):
            revert with 0, 17
        mem[_335 + 32] = block.timestamp + (3600 * arg3)
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if stor5 > !(arg2 / 10000 * stor9):
            revert with 0, 17
        stor5 += arg2 / 10000 * stor9
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor9)
        call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor9)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _449 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_449] == bool(mem[_449])
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 380]
        mem[mem[64] + 100] = 384
        mem[mem[64] + 452] = _33
        mem[mem[64] + 484 len ceil32(_33)] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 732 len ceil32(_33)]
        if ceil32(_33) > _33:
            mem[mem[64] + _33 + 484] = 0
        mem[mem[64] + 132] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 456 len 20]
        mem[mem[64] + 164] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 488 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = block.timestamp + (3600 * arg3)
        mem[mem[64] + 260] = mem[_335 + 92 len 4]
    mem[mem[64] + 292] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 540]
    if mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 572] >= 3:
        revert with 0, 33
    mem[mem[64] + 324] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 572]
    mem[mem[64] + 356] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 604]
    mem[mem[64] + 388] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 667 len 1]
    mem[mem[64] + 420] = mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 1]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x29a90305 with:
         gas gas_remaining wei
        args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 64], msg.sender, block.timestamp + (3600 * arg3), mem[mem[64] + 260 len 192], _33, mem[mem[64] + 484 len ceil32(_33)]
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
        _289 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[_289] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476]
        mem[_289 + 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 508]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 568 len 4]
        mem[_289 + 64] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 476] = _289
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 508] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 572]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604] < 3
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 636]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 699 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_309] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _317 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_317] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_348] == bool(mem[_348])
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
        _375 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_375] == mem[_375 + 12 len 20]
        _388 = mem[_375 + 32]
        if mem[_375 + 32] <= 0:
            if arg2 < arg2 / 10000 * stor8:
                revert with 0, 17
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
            call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_434] == bool(mem[_434])
        else:
            if address(ext_call.return_data[0]) == mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]:
                if arg2 < arg2 / 10000 * stor8:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_448] == bool(mem[_448])
            else:
                if arg2 / 10000 * stor8 > !mem[_375 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
                mem[mem[64] + 36] = _388
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_449] == bool(mem[_449])
                if arg2 < (arg2 / 10000 * stor8) + _388:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8) - _388
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8) - _388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_512] == bool(mem[_512])
    else:
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + _33 + 700] = 0
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 380] = ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 668
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 424 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 412] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 412]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 456 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 444] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 444]
        require return_data.size + -_29 - 128 >= 96
        _291 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 488 len 20]
        mem[_291] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 476]
        mem[_291 + 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 508]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 568 len 4]
        mem[_291 + 64] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 540]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 476] = _291
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 508] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 572]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604] < 3
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 540] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 604]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 572] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 636]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 699 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 604] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 668]
        require mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700] == mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 731 len 1]
        mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 636] = mem[ceil32(arg3.length) + ceil32(return_data.size) + _29 + 700]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_312] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_322] < arg2:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg2
        call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_354] == bool(mem[_354])
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
        _382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_382] == mem[_382 + 12 len 20]
        _392 = mem[_382 + 32]
        if mem[_382 + 32] <= 0:
            if arg2 < arg2 / 10000 * stor8:
                revert with 0, 17
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
            call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_458] == bool(mem[_458])
        else:
            if address(ext_call.return_data[0]) == mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]:
                if arg2 < arg2 / 10000 * stor8:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8)
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_469] == bool(mem[_469])
            else:
                if arg2 / 10000 * stor8 > !mem[_382 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 424 len 20]
                mem[mem[64] + 36] = _392
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == bool(mem[_470])
                if arg2 < (arg2 / 10000 * stor8) + _392:
                    revert with 0, 17
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 - (arg2 / 10000 * stor8) - _392
                call masterTokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 - (arg2 / 10000 * stor8) - _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_520] == bool(mem[_520])
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
    if bool(sub_226ea813) != 1:
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
    mem[ceil32(return_data.size) + 448] = _12
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
            mem[mem[64] + 388] = _12
            mem[mem[64] + 420 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
            if ceil32(_12) <= _12:
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1143 = mem[ceil32(return_data.size) + 224]
                _1144 = mem[ceil32(return_data.size) + 256]
                _1145 = mem[ceil32(return_data.size) + 384]
                _1146 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1143, _1144 << 248, _1145 << 248, _1146, _12, mem[mem[64] + 260 len ceil32(_12)]
            else:
                mem[mem[64] + _12 + 420] = 0
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[ceil32(return_data.size) + 224]
                _1192 = mem[ceil32(return_data.size) + 256]
                _1193 = mem[ceil32(return_data.size) + 384]
                _1194 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1191, _1192 << 248, _1193 << 248, _1194, _12, mem[mem[64] + 260 len ceil32(_12)]
        else:
            _512 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            staticcall masterTokenAddress.balanceOf(address arg1) with:
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
            staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
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
            _592 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _592
            call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _592
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _620 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_620] == bool(mem[_620])
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
            mem[mem[64] + 388] = _12
            mem[mem[64] + 420 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
            if ceil32(_12) <= _12:
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1137 = mem[ceil32(return_data.size) + 224]
                _1138 = mem[ceil32(return_data.size) + 256]
                _1139 = mem[ceil32(return_data.size) + 384]
                _1140 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1137, _1138 << 248, _1139 << 248, _1140, _12, mem[mem[64] + 260 len ceil32(_12)]
            else:
                mem[mem[64] + _12 + 420] = 0
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1185 = mem[ceil32(return_data.size) + 224]
                _1186 = mem[ceil32(return_data.size) + 256]
                _1187 = mem[ceil32(return_data.size) + 384]
                _1188 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1185, _1186 << 248, _1187 << 248, _1188, _12, mem[mem[64] + 260 len ceil32(_12)]
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
            mem[mem[64] + 388] = _12
            mem[mem[64] + 420 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
            if ceil32(_12) <= _12:
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[ceil32(return_data.size) + 224]
                _1168 = mem[ceil32(return_data.size) + 256]
                _1169 = mem[ceil32(return_data.size) + 384]
                _1170 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1167, _1168 << 248, _1169 << 248, _1170, _12, mem[mem[64] + 260 len ceil32(_12)]
            else:
                mem[mem[64] + _12 + 420] = 0
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1215 = mem[ceil32(return_data.size) + 224]
                _1216 = mem[ceil32(return_data.size) + 256]
                _1217 = mem[ceil32(return_data.size) + 384]
                _1218 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1215, _1216 << 248, _1217 << 248, _1218, _12, mem[mem[64] + 260 len ceil32(_12)]
        else:
            _520 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            staticcall masterTokenAddress.balanceOf(address arg1) with:
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
            staticcall masterTokenAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _550 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_550] < _520:
                revert with 0, 'You don't have enough or confirmed balance!'
            _605 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _605
            call masterTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _605
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_636] == bool(mem[_636])
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
            mem[mem[64] + 388] = _12
            mem[mem[64] + 420 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
            if ceil32(_12) <= _12:
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[ceil32(return_data.size) + 224]
                _1162 = mem[ceil32(return_data.size) + 256]
                _1163 = mem[ceil32(return_data.size) + 384]
                _1164 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1161, _1162 << 248, _1163 << 248, _1164, _12, mem[mem[64] + 260 len ceil32(_12)]
            else:
                mem[mem[64] + _12 + 420] = 0
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
                    args 32, mem[mem[64] + 36], 352, mem[mem[64] + 100 len 288], _12, mem[mem[64] + 420 len ceil32(_12)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1209 = mem[ceil32(return_data.size) + 224]
                _1210 = mem[ceil32(return_data.size) + 256]
                _1211 = mem[ceil32(return_data.size) + 384]
                _1212 = mem[ceil32(return_data.size) + 416]
                mem[mem[64]] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 224
                mem[mem[64] + 228] = _12
                mem[mem[64] + 260 len ceil32(_12)] = mem[ceil32(return_data.size) + 480 len ceil32(_12)]
                if ceil32(_12) > _12:
                    mem[mem[64] + _12 + 260] = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.0x4e5f67d4 with:
                     gas gas_remaining wei
                    args msg.sender, 224, 0, _1209, _1210 << 248, _1211 << 248, _1212, _12, mem[mem[64] + 260 len ceil32(_12)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
