contract main {




// =====================  Runtime code  =====================


#
#  - sub_2c151ef9(?)
#
const getContractBalance = eth.balance(this.address)


address masterTokenAddress;
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 sub_228aad4b;
uint8 sub_ed3d51ef;
uint8 sub_226ea813; offset 8
uint256 stor5; offset 8
uint16 stor6;
uint16 stor6; offset 16
uint256 stor7;
uint256 stor8;
mapping of struct stor9;

function sub_226ea813(?) {
    return bool(sub_226ea813)
}

function sub_228aad4b(?) {
    return sub_228aad4b
}

function sub_271c251a(?) {
    return bool(sub_ed3d51ef)
}

function masterToken() {
    return masterTokenAddress
}

function NFTToken() {
    return address(stor1.length)
}

function sub_ed3d51ef(?) {
    return bool(sub_ed3d51ef)
}

function _fallback() payable {
    revert
}

function sub_386eae51(?) {
    return uint16(stor6.field_0), uint16(stor6.field_0), stor7, stor8
}

function sub_88002d09(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    stor2 = address(arg1)
}

function sub_1af610fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    masterTokenAddress = address(arg1)
}

function sub_1c67072c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(sub_226ea813):
        revert with 0, 'No Change!'
    stor5 = Mask(248, 0, bool(arg1))
}

function sub_7bb14266(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    if bool(arg1) == bool(sub_ed3d51ef):
        revert with 0, 'No Change!'
    sub_ed3d51ef = uint8(bool(arg1))
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
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    if uint16(arg1):
        uint16(stor6.field_0) = uint16(arg1)
    if uint16(arg2):
        uint16(stor6.field_16) = uint16(arg2)
    return 1
}

function Withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    if not stor2:
        revert with 0, 'Address cannot be Zero!'
    if arg1 <= 0:
        revert with 0, 'Amount cannot be Zero!'
    call stor2 with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function UpdateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    if arg1 <= 0:
        if arg2 > 0:
            if arg2 != stor7:
                stor7 = arg2
    else:
        if arg1 != stor8:
            stor8 = arg1
        if arg2 > 0:
            if arg2 != stor7:
                stor7 = arg2
    return 1
}

function WithdrawFee() {
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    require stor3 > 0
    call masterTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3 = 0
    return 1
}

function TransferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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

function sub_d80843c5(?) {
    require calldata.size - 4 >= 288
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg5 == uint8(arg5)
    require arg6 == uint16(arg6)
    require arg7 == bool(arg7)
    require arg8 == uint8(arg8)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    stor9[arg1].field_0 = arg1
    if stor9[arg1].field_256:
        if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor9[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_256 = 0
            idx = 0
            while (uint255(stor9[arg1].field_256) * 0.5) + 31 / 32 > idx:
                stor9[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
            revert with 0, 34
        if arg2.length:
            stor9[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_256 = 0
            idx = 0
            while stor9[arg1].field_257 + 31 / 32 > idx:
                stor9[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor9[arg1].field_512 = arg3
    stor9[arg1].field_768 = arg4
    stor9[arg1].field_1024 = uint8(arg5)
    stor9[arg1].field_1032 = uint16(arg6)
    stor9[arg1].field_1048 = stor9[arg1].field_1048
    stor9[arg1].field_1064 = uint8(bool(arg7))
    stor9[arg1].field_1072 = uint8(arg8)
    stor9[arg1].field_1080 = Mask(200, 16, bool(arg7)) >> 16
    stor9[arg1].field_1280 = arg9
}

function sub_59a8bb5e(?) {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg4 == uint8(arg4)
    require arg5 == uint16(arg5)
    require arg6 == bool(arg6)
    require arg7 == uint8(arg7)
    if stor2 != msg.sender:
        revert with 0, 'Only Owner'
    stor9[stor4].field_0 = sub_228aad4b
    if stor9[stor4].field_256:
        if stor9[stor4].field_256 == uint255(stor9[stor4].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[stor4][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9[stor4].field_256 = 0
            idx = 0
            while (uint255(stor9[stor4].field_256) * 0.5) + 31 / 32 > idx:
                stor9[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[stor4].field_256 == stor9[stor4].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[stor4][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9[stor4].field_256 = 0
            idx = 0
            while stor9[stor4].field_257 + 31 / 32 > idx:
                stor9[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor9[stor4].field_512 = arg2
    stor9[stor4].field_768 = arg3
    stor9[stor4].field_1024 = uint8(arg4)
    stor9[stor4].field_1032 = uint16(arg5)
    stor9[stor4].field_1048 = uint16(arg5)
    stor9[stor4].field_1064 = uint8(bool(arg6))
    stor9[stor4].field_1072 = uint8(arg7)
    stor9[stor4].field_1080 = Mask(200, 16, bool(arg6)) >> 16
    stor9[stor4].field_1280 = arg8
    emit 0x75f75528: sub_228aad4b, arg3
    if sub_228aad4b == -1:
        revert with 0, 17
    sub_228aad4b++
}

function sub_0364b1aa(?) {
    require calldata.size - 4 >= 32
    if stor9[arg1].field_256:
        if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor9[arg1].field_256:
            if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9[arg1].field_256):
                if 31 >= uint255(stor9[arg1].field_256) * 0.5:
                    mem[128] = 256 * stor9[arg1].field_264
                else:
                    mem[128] = stor9[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor9[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
                revert with 0, 34
            if stor9[arg1].field_257:
                if 31 >= stor9[arg1].field_257:
                    mem[128] = 256 * stor9[arg1].field_264
                else:
                    mem[128] = stor9[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor9[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor9[arg1].field_256), data=mem[128 len ceil32(uint255(stor9[arg1].field_256) * 0.5)]),
               stor9[arg1].field_512,
               stor9[arg1].field_768,
               stor9[arg1].field_1024,
               stor9[arg1].field_1024,
               stor9[arg1].field_1024,
               bool(stor9[arg1].field_1064),
               stor9[arg1].field_1024,
               stor9[arg1].field_1280
    if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
        revert with 0, 34
    if stor9[arg1].field_256:
        if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9[arg1].field_256):
            if 31 >= uint255(stor9[arg1].field_256) * 0.5:
                mem[128] = 256 * stor9[arg1].field_264
            else:
                mem[128] = stor9[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor9[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
            revert with 0, 34
        if stor9[arg1].field_257:
            if 31 >= stor9[arg1].field_257:
                mem[128] = 256 * stor9[arg1].field_264
            else:
                mem[128] = stor9[arg1][1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor9[arg1].field_0, 
           Array(len=stor9[arg1].field_256, data=mem[128 len ceil32(stor9[arg1].field_257)]),
           stor9[arg1].field_512,
           stor9[arg1].field_768,
           stor9[arg1].field_1024,
           stor9[arg1].field_1024,
           stor9[arg1].field_1024,
           bool(stor9[arg1].field_1064),
           stor9[arg1].field_1024,
           stor9[arg1].field_1280
}

function sub_55ef7a5b(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0xd1e0195000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    staticcall address(stor1.length).0xd1e01950 with:
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
        staticcall address(stor1.length).0x2a55205a with:
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
    staticcall address(stor1.length).0x2a55205a with:
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

function buyCollection(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(sub_226ea813) != 1:
        revert with 0, 'Sales are currently closed'
    require msg.sender
    if not stor9[arg1].field_1032:
        revert with 0, 'NFT, Out of stock'
    if bool(stor9[arg1].field_1064) != 1:
        revert with 0, 'NFT, Out of stock'
    if stor9[arg1].field_256:
        if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor9[arg1].field_256:
            if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9[arg1].field_256):
                if 31 >= uint255(stor9[arg1].field_256) * 0.5:
                    mem[448] = 256 * stor9[arg1].field_264
                else:
                    mem[448] = stor9[arg1][1].field_0
                    idx = 448
                    s = 0
                    while (uint255(stor9[arg1].field_256) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
                revert with 0, 34
            if stor9[arg1].field_257:
                if 31 >= stor9[arg1].field_257:
                    mem[448] = 256 * stor9[arg1].field_264
                else:
                    mem[448] = stor9[arg1][1].field_0
                    idx = 448
                    s = 0
                    while stor9[arg1].field_257 + 416 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not sub_ed3d51ef:
            if msg.value < stor9[arg1].field_512:
                revert with 0, 'You don't have enough balance!'
            if stor9[arg1].field_1032 < 1:
                revert with 0, 17
            stor9[arg1].field_1032 = uint16(stor9[arg1].field_1032 - 1)
        else:
            staticcall masterTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor9[arg1].field_512:
                revert with 0, 'You don't have enough or confirmed balance!'
            staticcall masterTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[ceil32(uint255(stor9[arg1].field_256) * 0.5) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor9[arg1].field_512:
                revert with 0, 'You don't have enough or confirmed balance!'
            call masterTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, stor9[arg1].field_512
            mem[ceil32(uint255(stor9[arg1].field_256) * 0.5) + (2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor3 > !stor9[arg1].field_512:
                revert with 0, 17
            stor3 += stor9[arg1].field_512
            if stor9[arg1].field_1032 < 1:
                revert with 0, 17
            stor9[arg1].field_1032 = uint16(stor9[arg1].field_1032 - 1)
            mem[ceil32(uint255(stor9[arg1].field_256) * 0.5) + (4 * ceil32(return_data.size)) + 448] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x4e5f67d4 with:
             gas gas_remaining wei
            args msg.sender, 224, 0, stor9[arg1].field_768, stor9[arg1].field_1024, stor9[arg1].field_1024, stor9[arg1].field_1280, 2 * Mask(256, -1, stor9[arg1].field_256), mem[448 len ceil32(uint255(stor9[arg1].field_256) * 0.5)]
    else:
        if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
            revert with 0, 34
        if stor9[arg1].field_256:
            if stor9[arg1].field_256 == uint255(stor9[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9[arg1].field_256):
                if 31 >= uint255(stor9[arg1].field_256) * 0.5:
                    mem[448] = 256 * stor9[arg1].field_264
                else:
                    mem[448] = stor9[arg1][1].field_0
                    idx = 448
                    s = 0
                    while (uint255(stor9[arg1].field_256) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor9[arg1].field_256 == stor9[arg1].field_257 < 32:
                revert with 0, 34
            if stor9[arg1].field_257:
                if 31 >= stor9[arg1].field_257:
                    mem[448] = 256 * stor9[arg1].field_264
                else:
                    mem[448] = stor9[arg1][1].field_0
                    idx = 448
                    s = 0
                    while stor9[arg1].field_257 + 416 > idx:
                        mem[idx + 32] = stor9[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not sub_ed3d51ef:
            if msg.value < stor9[arg1].field_512:
                revert with 0, 'You don't have enough balance!'
            if stor9[arg1].field_1032 < 1:
                revert with 0, 17
            stor9[arg1].field_1032 = uint16(stor9[arg1].field_1032 - 1)
        else:
            staticcall masterTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor9[arg1].field_512:
                revert with 0, 'You don't have enough or confirmed balance!'
            staticcall masterTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[ceil32(stor9[arg1].field_257) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor9[arg1].field_512:
                revert with 0, 'You don't have enough or confirmed balance!'
            call masterTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, stor9[arg1].field_512
            mem[ceil32(stor9[arg1].field_257) + (2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor3 > !stor9[arg1].field_512:
                revert with 0, 17
            stor3 += stor9[arg1].field_512
            if stor9[arg1].field_1032 < 1:
                revert with 0, 17
            stor9[arg1].field_1032 = uint16(stor9[arg1].field_1032 - 1)
            mem[ceil32(stor9[arg1].field_257) + (4 * ceil32(return_data.size)) + 448] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x4e5f67d4 with:
             gas gas_remaining wei
            args msg.sender, 224, 0, stor9[arg1].field_768, stor9[arg1].field_1024, stor9[arg1].field_1024, stor9[arg1].field_1280, stor9[arg1].field_256, mem[448 len ceil32(stor9[arg1].field_257)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d1e30693(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    mem[100] = arg1
    staticcall address(stor1.length).0x6352211e with:
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
    staticcall address(stor1.length).0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool((2 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 416
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _11 = mem[ceil32(return_data.size) + _8 + 128]
    require mem[ceil32(return_data.size) + _8 + 128] <= test266151307()
    require ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _12 = mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96]
    if mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 321 < 320 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 417
    mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96]
    require _8 + _11 + _12 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_12)] = mem[ceil32(return_data.size) + _8 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _8 + 160] == mem[ceil32(return_data.size) + _8 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _8 + 160]
        require mem[ceil32(return_data.size) + _8 + 192] == mem[ceil32(return_data.size) + _8 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _8 + 192]
        require return_data.size + -_8 - 128 >= 96
        _356 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + 224] == mem[ceil32(return_data.size) + _8 + 236 len 20]
        mem[_356] = mem[ceil32(return_data.size) + _8 + 224]
        mem[_356 + 32] = mem[ceil32(return_data.size) + _8 + 256]
        require mem[ceil32(return_data.size) + _8 + 288] == mem[ceil32(return_data.size) + _8 + 316 len 4]
        mem[_356 + 64] = mem[ceil32(return_data.size) + _8 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _356
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _8 + 320]
        require mem[ceil32(return_data.size) + _8 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _8 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _8 + 384]
        require mem[ceil32(return_data.size) + _8 + 416] == mem[ceil32(return_data.size) + _8 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _8 + 416]
        require mem[ceil32(return_data.size) + _8 + 448] == mem[ceil32(return_data.size) + _8 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _8 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 2:
            revert with 0, 'NFT is not in Rent mode'
        if mem[_356 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_356 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        _384 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_391] < _384:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_400] < _384:
            revert with 0, 'You don't have enough or confirmed balance!'
        _427 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _427
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _427
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _432 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_432] == bool(mem[_432])
        mem[_356] = msg.sender
        if mem[_356 + 92 len 4] > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * mem[_356 + 92 len 4]):
            revert with 0, 17
        mem[_356 + 32] = block.timestamp + uint32(3600 * mem[_356 + 92 len 4])
        _473 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor8 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor3 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8):
            revert with 0, 17
        stor3 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8
        _490 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8:
            revert with 0, 17
        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 36] = _490 - (_473 / 10000 * stor8)
        call masterTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _490 - (_473 / 10000 * stor8)
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
        _542 = mem[(2 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 452] = mem[(2 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 484 len ceil32(_542)] = mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_542)]
        if ceil32(_542) > _542:
            mem[mem[64] + _542 + 484] = 0
        mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = mem[_356 + 32]
        mem[mem[64] + 260] = mem[_356 + 92 len 4]
        mem[mem[64] + 292] = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 288] >= 3:
            revert with 0, 33
        mem[mem[64] + 324] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 356] = mem[(2 * ceil32(return_data.size)) + 320]
        mem[mem[64] + 388] = mem[(2 * ceil32(return_data.size)) + 383 len 1]
        mem[mem[64] + 420] = mem[(2 * ceil32(return_data.size)) + 415 len 1]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x29a90305 with:
             gas gas_remaining wei
            args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 64], msg.sender, mem[mem[64] + 228 len ceil32(_542) + 256]
    else:
        mem[(2 * ceil32(return_data.size)) + _12 + 448] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _8 + 160] == mem[ceil32(return_data.size) + _8 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _8 + 160]
        require mem[ceil32(return_data.size) + _8 + 192] == mem[ceil32(return_data.size) + _8 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _8 + 192]
        require return_data.size + -_8 - 128 >= 96
        _358 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + 224] == mem[ceil32(return_data.size) + _8 + 236 len 20]
        mem[_358] = mem[ceil32(return_data.size) + _8 + 224]
        mem[_358 + 32] = mem[ceil32(return_data.size) + _8 + 256]
        require mem[ceil32(return_data.size) + _8 + 288] == mem[ceil32(return_data.size) + _8 + 316 len 4]
        mem[_358 + 64] = mem[ceil32(return_data.size) + _8 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _358
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _8 + 320]
        require mem[ceil32(return_data.size) + _8 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _8 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _8 + 384]
        require mem[ceil32(return_data.size) + _8 + 416] == mem[ceil32(return_data.size) + _8 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _8 + 416]
        require mem[ceil32(return_data.size) + _8 + 448] == mem[ceil32(return_data.size) + _8 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _8 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 2:
            revert with 0, 'NFT is not in Rent mode'
        if mem[_358 + 32] > -86401:
            revert with 0, 17
        if block.timestamp <= mem[_358 + 32] + (24 * 3600):
            revert with 0, 'NFT already rented'
        _389 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_395] < _389:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _407 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_407] < _389:
            revert with 0, 'You don't have enough or confirmed balance!'
        _440 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _440
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _440
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _447 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_447] == bool(mem[_447])
        mem[_358] = msg.sender
        if mem[_358 + 92 len 4] > 1193046:
            revert with 0, 17
        if block.timestamp > !uint32(3600 * mem[_358 + 92 len 4]):
            revert with 0, 17
        mem[_358 + 32] = block.timestamp + uint32(3600 * mem[_358 + 92 len 4])
        _477 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor8 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor3 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8):
            revert with 0, 17
        stor3 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8
        _496 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor8:
            revert with 0, 17
        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 36] = _496 - (_477 / 10000 * stor8)
        call masterTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _496 - (_477 / 10000 * stor8)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _516 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_516] == bool(mem[_516])
        mem[mem[64]] = 0x29a9030500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 100] = 384
        _564 = mem[(2 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 452] = mem[(2 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 484 len ceil32(_564)] = mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_564)]
        if ceil32(_564) > _564:
            mem[mem[64] + _564 + 484] = 0
        mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = mem[_358 + 32]
        mem[mem[64] + 260] = mem[_358 + 92 len 4]
        mem[mem[64] + 292] = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 288] >= 3:
            revert with 0, 33
        mem[mem[64] + 324] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 356] = mem[(2 * ceil32(return_data.size)) + 320]
        mem[mem[64] + 388] = mem[(2 * ceil32(return_data.size)) + 383 len 1]
        mem[mem[64] + 420] = mem[(2 * ceil32(return_data.size)) + 415 len 1]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x29a90305 with:
             gas gas_remaining wei
            args arg1, 64, mem[mem[64] + 68], 384, mem[mem[64] + 132 len 64], msg.sender, mem[mem[64] + 228 len ceil32(_564) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    mem[100] = arg1
    staticcall address(stor1.length).0x6352211e with:
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
    staticcall address(stor1.length).0xd1e01950 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 384
    if not bool((2 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 416
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _11 = mem[ceil32(return_data.size) + _8 + 128]
    require mem[ceil32(return_data.size) + _8 + 128] <= test266151307()
    require ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _12 = mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96]
    if mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 321 < 320 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96])) + 417
    mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _8 + mem[ceil32(return_data.size) + _8 + 128] + 96]
    require _8 + _11 + _12 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_12)] = mem[ceil32(return_data.size) + _8 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _8 + 160] == mem[ceil32(return_data.size) + _8 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _8 + 160]
        require mem[ceil32(return_data.size) + _8 + 192] == mem[ceil32(return_data.size) + _8 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _8 + 192]
        require return_data.size + -_8 - 128 >= 96
        _336 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + 224] == mem[ceil32(return_data.size) + _8 + 236 len 20]
        mem[_336] = mem[ceil32(return_data.size) + _8 + 224]
        mem[_336 + 32] = mem[ceil32(return_data.size) + _8 + 256]
        require mem[ceil32(return_data.size) + _8 + 288] == mem[ceil32(return_data.size) + _8 + 316 len 4]
        mem[_336 + 64] = mem[ceil32(return_data.size) + _8 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _336
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _8 + 320]
        require mem[ceil32(return_data.size) + _8 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _8 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _8 + 384]
        require mem[ceil32(return_data.size) + _8 + 416] == mem[ceil32(return_data.size) + _8 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _8 + 416]
        require mem[ceil32(return_data.size) + _8 + 448] == mem[ceil32(return_data.size) + _8 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _8 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 1:
            revert with 0, 'NFT is not in Sell mode'
        _356 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _363 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_363] < _356:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_372] < _356:
            revert with 0, 'You don't have enough or confirmed balance!'
        _397 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _397
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _397
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_402] == bool(mem[_402])
        _423 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor7 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor3 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor7):
            revert with 0, 17
        stor3 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor7
        _439 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 256]
        staticcall address(stor1.length).0x2a55205a with:
                gas gas_remaining wei
               args arg1, _439
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _451 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_451] == mem[_451 + 12 len 20]
        _471 = mem[_451 + 32]
        if mem[_451 + 32] <= 0:
            _493 = mem[(2 * ceil32(return_data.size)) + 256]
            if mem[(2 * ceil32(return_data.size)) + 256] < _423 / 10000 * stor7:
                revert with 0, 17
            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
            mem[mem[64] + 36] = _493 - (_423 / 10000 * stor7)
            call masterTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _493 - (_423 / 10000 * stor7)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_538] == bool(mem[_538])
        else:
            if mem[(2 * ceil32(return_data.size)) + 204 len 20] == mem[(2 * ceil32(return_data.size)) + 172 len 20]:
                _508 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 256] < _423 / 10000 * stor7:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
                mem[mem[64] + 36] = _508 - (_423 / 10000 * stor7)
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _508 - (_423 / 10000 * stor7)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_554] == bool(mem[_554])
            else:
                if _423 / 10000 * stor7 > !mem[_451 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
                mem[mem[64] + 36] = _471
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _471
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_555] == bool(mem[_555])
                _608 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 256] < (_423 / 10000 * stor7) + _471:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
                mem[mem[64] + 36] = _608 - (_423 / 10000 * stor7) - _471
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _608 - (_423 / 10000 * stor7) - _471
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_627] == bool(mem[_627])
    else:
        mem[(2 * ceil32(return_data.size)) + _12 + 448] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 416
        require mem[ceil32(return_data.size) + _8 + 160] == mem[ceil32(return_data.size) + _8 + 172 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _8 + 160]
        require mem[ceil32(return_data.size) + _8 + 192] == mem[ceil32(return_data.size) + _8 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _8 + 192]
        require return_data.size + -_8 - 128 >= 96
        _338 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[ceil32(return_data.size) + _8 + 224] == mem[ceil32(return_data.size) + _8 + 236 len 20]
        mem[_338] = mem[ceil32(return_data.size) + _8 + 224]
        mem[_338 + 32] = mem[ceil32(return_data.size) + _8 + 256]
        require mem[ceil32(return_data.size) + _8 + 288] == mem[ceil32(return_data.size) + _8 + 316 len 4]
        mem[_338 + 64] = mem[ceil32(return_data.size) + _8 + 288]
        mem[(2 * ceil32(return_data.size)) + 224] = _338
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _8 + 320]
        require mem[ceil32(return_data.size) + _8 + 352] < 3
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _8 + 352]
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _8 + 384]
        require mem[ceil32(return_data.size) + _8 + 416] == mem[ceil32(return_data.size) + _8 + 447 len 1]
        mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _8 + 416]
        require mem[ceil32(return_data.size) + _8 + 448] == mem[ceil32(return_data.size) + _8 + 479 len 1]
        mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _8 + 448]
        if mem[(2 * ceil32(return_data.size)) + 288] > 2:
            revert with 0, 33
        if mem[(2 * ceil32(return_data.size)) + 288] != 1:
            revert with 0, 'NFT is not in Sell mode'
        _361 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        staticcall masterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_367] < _361:
            revert with 0, 'You don't have enough or confirmed balance!'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall masterTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _379 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_379] < _361:
            revert with 0, 'You don't have enough or confirmed balance!'
        _408 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _408
        call masterTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _408
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_415] == bool(mem[_415])
        _425 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] / 10000 and stor7 > -1 / mem[(2 * ceil32(return_data.size)) + 256] / 10000:
            revert with 0, 17
        if stor3 > !(mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor7):
            revert with 0, 17
        stor3 += mem[(2 * ceil32(return_data.size)) + 256] / 10000 * stor7
        _446 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 256]
        staticcall address(stor1.length).0x2a55205a with:
                gas gas_remaining wei
               args arg1, _446
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _459 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_459] == mem[_459 + 12 len 20]
        _475 = mem[_459 + 32]
        if mem[_459 + 32] <= 0:
            _514 = mem[(2 * ceil32(return_data.size)) + 256]
            if mem[(2 * ceil32(return_data.size)) + 256] < _425 / 10000 * stor7:
                revert with 0, 17
            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
            mem[mem[64] + 36] = _514 - (_425 / 10000 * stor7)
            call masterTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _514 - (_425 / 10000 * stor7)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _564 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_564] == bool(mem[_564])
        else:
            if mem[(2 * ceil32(return_data.size)) + 204 len 20] == mem[(2 * ceil32(return_data.size)) + 172 len 20]:
                _521 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 256] < _425 / 10000 * stor7:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
                mem[mem[64] + 36] = _521 - (_425 / 10000 * stor7)
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _521 - (_425 / 10000 * stor7)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_576] == bool(mem[_576])
            else:
                if _425 / 10000 * stor7 > !mem[_459 + 32]:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 172 len 20]
                mem[mem[64] + 36] = _475
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _475
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_577] == bool(mem[_577])
                _618 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 256] < (_425 / 10000 * stor7) + _475:
                    revert with 0, 17
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
                mem[mem[64] + 36] = _618 - (_425 / 10000 * stor7) - _475
                call masterTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _618 - (_425 / 10000 * stor7) - _475
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_635] == bool(mem[_635])
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x1072cbea with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_52e9d664(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if sub_228aad4b > test266151307():
        revert with 0, 65
    mem[96] = sub_228aad4b
    mem[64] = (32 * sub_228aad4b) + 128
    if not sub_228aad4b:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _141 = mem[64]
            mem[64] = mem[64] + 320
            mem[_141] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_148] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_148 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_148 + 32] = stor9[idx][1].field_0
                            s = _148 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _148 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_148 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_148 + 32] = stor9[idx][1].field_0
                            s = _148 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _148 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_141 + 32] = _148
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_153] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_153 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_153 + 32] = stor9[idx][1].field_0
                            s = _153 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _153 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_153 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_153 + 32] = stor9[idx][1].field_0
                            s = _153 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _153 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_141 + 32] = _153
            mem[_141 + 64] = stor9[idx].field_512
            mem[_141 + 96] = stor9[idx].field_768
            mem[_141 + 128] = stor9[idx].field_1024
            mem[_141 + 160] = stor9[idx].field_1032
            mem[_141 + 192] = stor9[idx].field_1048
            mem[_141 + 224] = bool(stor9[idx].field_1064)
            mem[_141 + 256] = stor9[idx].field_1072
            mem[_141 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _141
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _141
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _142 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_142 - 64
            _277 = mem[s]
            mem[t] = mem[mem[s]]
            _279 = mem[_277 + 32]
            mem[t + 32] = 320
            _282 = mem[_279]
            mem[t + 320] = mem[_279]
            v = 0
            while v < _282:
                mem[v + t + 352] = mem[v + _279 + 32]
                v = v + 32
                continue 
            if ceil32(_282) > _282:
                mem[t + _282 + 352] = 0
            mem[t + 64] = mem[_277 + 64]
            mem[t + 96] = mem[_277 + 96]
            mem[t + 128] = mem[_277 + 159 len 1]
            mem[t + 160] = mem[_277 + 190 len 2]
            mem[t + 192] = mem[_277 + 222 len 2]
            mem[t + 224] = bool(mem[_277 + 224])
            mem[t + 256] = mem[_277 + 287 len 1]
            mem[t + 288] = mem[_277 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_282) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 448
    mem[(32 * sub_228aad4b) + 128] = 0
    mem[(32 * sub_228aad4b) + 160] = 96
    mem[(32 * sub_228aad4b) + 192] = 0
    mem[(32 * sub_228aad4b) + 224] = 0
    mem[(32 * sub_228aad4b) + 256] = 0
    mem[(32 * sub_228aad4b) + 288] = 0
    mem[(32 * sub_228aad4b) + 320] = 0
    mem[(32 * sub_228aad4b) + 352] = 0
    mem[(32 * sub_228aad4b) + 384] = 0
    mem[(32 * sub_228aad4b) + 416] = 0
    mem[var16002] = var16001
    if not var16003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _451 = mem[64]
            mem[64] = mem[64] + 320
            mem[_451] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_471] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_471 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_471 + 32] = stor9[idx][1].field_0
                            s = _471 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _471 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_471 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_471 + 32] = stor9[idx][1].field_0
                            s = _471 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _471 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_451 + 32] = _471
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_480] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_480 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_480 + 32] = stor9[idx][1].field_0
                            s = _480 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _480 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_480 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_480 + 32] = stor9[idx][1].field_0
                            s = _480 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _480 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_451 + 32] = _480
            mem[_451 + 64] = stor9[idx].field_512
            mem[_451 + 96] = stor9[idx].field_768
            mem[_451 + 128] = stor9[idx].field_1024
            mem[_451 + 160] = stor9[idx].field_1032
            mem[_451 + 192] = stor9[idx].field_1048
            mem[_451 + 224] = bool(stor9[idx].field_1064)
            mem[_451 + 256] = stor9[idx].field_1072
            mem[_451 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _451
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _451
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _453 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_453 - 64
            _604 = mem[s]
            mem[t] = mem[mem[s]]
            _606 = mem[_604 + 32]
            mem[t + 32] = 320
            _608 = mem[_606]
            mem[t + 320] = mem[_606]
            v = 0
            while v < _608:
                mem[v + t + 352] = mem[v + _606 + 32]
                v = v + 32
                continue 
            if ceil32(_608) > _608:
                mem[t + _608 + 352] = 0
            mem[t + 64] = mem[_604 + 64]
            mem[t + 96] = mem[_604 + 96]
            mem[t + 128] = mem[_604 + 159 len 1]
            mem[t + 160] = mem[_604 + 190 len 2]
            mem[t + 192] = mem[_604 + 222 len 2]
            mem[t + 224] = bool(mem[_604 + 224])
            mem[t + 256] = mem[_604 + 287 len 1]
            mem[t + 288] = mem[_604 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_608) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 768
    mem[(32 * sub_228aad4b) + 448] = 0
    mem[(32 * sub_228aad4b) + 480] = 96
    mem[(32 * sub_228aad4b) + 512] = 0
    mem[(32 * sub_228aad4b) + 544] = 0
    mem[(32 * sub_228aad4b) + 576] = 0
    mem[(32 * sub_228aad4b) + 608] = 0
    mem[(32 * sub_228aad4b) + 640] = 0
    mem[(32 * sub_228aad4b) + 672] = 0
    mem[(32 * sub_228aad4b) + 704] = 0
    mem[(32 * sub_228aad4b) + 736] = 0
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _776 = mem[64]
            mem[64] = mem[64] + 320
            mem[_776] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_789] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_789 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_789 + 32] = stor9[idx][1].field_0
                            s = _789 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _789 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_789 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_789 + 32] = stor9[idx][1].field_0
                            s = _789 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _789 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_776 + 32] = _789
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _801 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_801] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_801 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_801 + 32] = stor9[idx][1].field_0
                            s = _801 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _801 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_801 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_801 + 32] = stor9[idx][1].field_0
                            s = _801 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _801 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_776 + 32] = _801
            mem[_776 + 64] = stor9[idx].field_512
            mem[_776 + 96] = stor9[idx].field_768
            mem[_776 + 128] = stor9[idx].field_1024
            mem[_776 + 160] = stor9[idx].field_1032
            mem[_776 + 192] = stor9[idx].field_1048
            mem[_776 + 224] = bool(stor9[idx].field_1064)
            mem[_776 + 256] = stor9[idx].field_1072
            mem[_776 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _776
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _776
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _779 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_779 - 64
            _930 = mem[s]
            mem[t] = mem[mem[s]]
            _932 = mem[_930 + 32]
            mem[t + 32] = 320
            _934 = mem[_932]
            mem[t + 320] = mem[_932]
            v = 0
            while v < _934:
                mem[v + t + 352] = mem[v + _932 + 32]
                v = v + 32
                continue 
            if ceil32(_934) > _934:
                mem[t + _934 + 352] = 0
            mem[t + 64] = mem[_930 + 64]
            mem[t + 96] = mem[_930 + 96]
            mem[t + 128] = mem[_930 + 159 len 1]
            mem[t + 160] = mem[_930 + 190 len 2]
            mem[t + 192] = mem[_930 + 222 len 2]
            mem[t + 224] = bool(mem[_930 + 224])
            mem[t + 256] = mem[_930 + 287 len 1]
            mem[t + 288] = mem[_930 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_934) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 1088
    mem[(32 * sub_228aad4b) + 768] = 0
    mem[(32 * sub_228aad4b) + 800] = 96
    mem[(32 * sub_228aad4b) + 832] = 0
    mem[(32 * sub_228aad4b) + 864] = 0
    mem[(32 * sub_228aad4b) + 896] = 0
    mem[(32 * sub_228aad4b) + 928] = 0
    mem[(32 * sub_228aad4b) + 960] = 0
    mem[(32 * sub_228aad4b) + 992] = 0
    mem[(32 * sub_228aad4b) + 1024] = 0
    mem[(32 * sub_228aad4b) + 1056] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _1102 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1102] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1115 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_1115] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1115 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1115 + 32] = stor9[idx][1].field_0
                            s = _1115 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1115 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1115 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1115 + 32] = stor9[idx][1].field_0
                            s = _1115 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1115 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1102 + 32] = _1115
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _1127 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_1127] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1127 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1127 + 32] = stor9[idx][1].field_0
                            s = _1127 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1127 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1127 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1127 + 32] = stor9[idx][1].field_0
                            s = _1127 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1127 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1102 + 32] = _1127
            mem[_1102 + 64] = stor9[idx].field_512
            mem[_1102 + 96] = stor9[idx].field_768
            mem[_1102 + 128] = stor9[idx].field_1024
            mem[_1102 + 160] = stor9[idx].field_1032
            mem[_1102 + 192] = stor9[idx].field_1048
            mem[_1102 + 224] = bool(stor9[idx].field_1064)
            mem[_1102 + 256] = stor9[idx].field_1072
            mem[_1102 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _1102
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _1102
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _1105 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_1105 - 64
            _1256 = mem[s]
            mem[t] = mem[mem[s]]
            _1258 = mem[_1256 + 32]
            mem[t + 32] = 320
            _1260 = mem[_1258]
            mem[t + 320] = mem[_1258]
            v = 0
            while v < _1260:
                mem[v + t + 352] = mem[v + _1258 + 32]
                v = v + 32
                continue 
            if ceil32(_1260) > _1260:
                mem[t + _1260 + 352] = 0
            mem[t + 64] = mem[_1256 + 64]
            mem[t + 96] = mem[_1256 + 96]
            mem[t + 128] = mem[_1256 + 159 len 1]
            mem[t + 160] = mem[_1256 + 190 len 2]
            mem[t + 192] = mem[_1256 + 222 len 2]
            mem[t + 224] = bool(mem[_1256 + 224])
            mem[t + 256] = mem[_1256 + 287 len 1]
            mem[t + 288] = mem[_1256 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1260) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 1408
    mem[(32 * sub_228aad4b) + 1088] = 0
    mem[(32 * sub_228aad4b) + 1120] = 96
    mem[(32 * sub_228aad4b) + 1152] = 0
    mem[(32 * sub_228aad4b) + 1184] = 0
    mem[(32 * sub_228aad4b) + 1216] = 0
    mem[(32 * sub_228aad4b) + 1248] = 0
    mem[(32 * sub_228aad4b) + 1280] = 0
    mem[(32 * sub_228aad4b) + 1312] = 0
    mem[(32 * sub_228aad4b) + 1344] = 0
    mem[(32 * sub_228aad4b) + 1376] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _1428 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1428] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1441 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_1441] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1441 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1441 + 32] = stor9[idx][1].field_0
                            s = _1441 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1441 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1441 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1441 + 32] = stor9[idx][1].field_0
                            s = _1441 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1441 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1428 + 32] = _1441
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _1453 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_1453] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1453 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1453 + 32] = stor9[idx][1].field_0
                            s = _1453 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1453 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1453 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1453 + 32] = stor9[idx][1].field_0
                            s = _1453 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1453 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1428 + 32] = _1453
            mem[_1428 + 64] = stor9[idx].field_512
            mem[_1428 + 96] = stor9[idx].field_768
            mem[_1428 + 128] = stor9[idx].field_1024
            mem[_1428 + 160] = stor9[idx].field_1032
            mem[_1428 + 192] = stor9[idx].field_1048
            mem[_1428 + 224] = bool(stor9[idx].field_1064)
            mem[_1428 + 256] = stor9[idx].field_1072
            mem[_1428 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _1428
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _1428
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _1431 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_1431 - 64
            _1582 = mem[s]
            mem[t] = mem[mem[s]]
            _1584 = mem[_1582 + 32]
            mem[t + 32] = 320
            _1586 = mem[_1584]
            mem[t + 320] = mem[_1584]
            v = 0
            while v < _1586:
                mem[v + t + 352] = mem[v + _1584 + 32]
                v = v + 32
                continue 
            if ceil32(_1586) > _1586:
                mem[t + _1586 + 352] = 0
            mem[t + 64] = mem[_1582 + 64]
            mem[t + 96] = mem[_1582 + 96]
            mem[t + 128] = mem[_1582 + 159 len 1]
            mem[t + 160] = mem[_1582 + 190 len 2]
            mem[t + 192] = mem[_1582 + 222 len 2]
            mem[t + 224] = bool(mem[_1582 + 224])
            mem[t + 256] = mem[_1582 + 287 len 1]
            mem[t + 288] = mem[_1582 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1586) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 1728
    mem[(32 * sub_228aad4b) + 1408] = 0
    mem[(32 * sub_228aad4b) + 1440] = 96
    mem[(32 * sub_228aad4b) + 1472] = 0
    mem[(32 * sub_228aad4b) + 1504] = 0
    mem[(32 * sub_228aad4b) + 1536] = 0
    mem[(32 * sub_228aad4b) + 1568] = 0
    mem[(32 * sub_228aad4b) + 1600] = 0
    mem[(32 * sub_228aad4b) + 1632] = 0
    mem[(32 * sub_228aad4b) + 1664] = 0
    mem[(32 * sub_228aad4b) + 1696] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _1754 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1754] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1767 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_1767] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1767 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1767 + 32] = stor9[idx][1].field_0
                            s = _1767 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1767 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1767 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1767 + 32] = stor9[idx][1].field_0
                            s = _1767 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1767 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1754 + 32] = _1767
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _1779 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_1779] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_1779 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1779 + 32] = stor9[idx][1].field_0
                            s = _1779 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1779 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_1779 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_1779 + 32] = stor9[idx][1].field_0
                            s = _1779 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _1779 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1754 + 32] = _1779
            mem[_1754 + 64] = stor9[idx].field_512
            mem[_1754 + 96] = stor9[idx].field_768
            mem[_1754 + 128] = stor9[idx].field_1024
            mem[_1754 + 160] = stor9[idx].field_1032
            mem[_1754 + 192] = stor9[idx].field_1048
            mem[_1754 + 224] = bool(stor9[idx].field_1064)
            mem[_1754 + 256] = stor9[idx].field_1072
            mem[_1754 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _1754
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _1754
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _1757 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_1757 - 64
            _1908 = mem[s]
            mem[t] = mem[mem[s]]
            _1910 = mem[_1908 + 32]
            mem[t + 32] = 320
            _1912 = mem[_1910]
            mem[t + 320] = mem[_1910]
            v = 0
            while v < _1912:
                mem[v + t + 352] = mem[v + _1910 + 32]
                v = v + 32
                continue 
            if ceil32(_1912) > _1912:
                mem[t + _1912 + 352] = 0
            mem[t + 64] = mem[_1908 + 64]
            mem[t + 96] = mem[_1908 + 96]
            mem[t + 128] = mem[_1908 + 159 len 1]
            mem[t + 160] = mem[_1908 + 190 len 2]
            mem[t + 192] = mem[_1908 + 222 len 2]
            mem[t + 224] = bool(mem[_1908 + 224])
            mem[t + 256] = mem[_1908 + 287 len 1]
            mem[t + 288] = mem[_1908 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1912) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 2048
    mem[(32 * sub_228aad4b) + 1728] = 0
    mem[(32 * sub_228aad4b) + 1760] = 96
    mem[(32 * sub_228aad4b) + 1792] = 0
    mem[(32 * sub_228aad4b) + 1824] = 0
    mem[(32 * sub_228aad4b) + 1856] = 0
    mem[(32 * sub_228aad4b) + 1888] = 0
    mem[(32 * sub_228aad4b) + 1920] = 0
    mem[(32 * sub_228aad4b) + 1952] = 0
    mem[(32 * sub_228aad4b) + 1984] = 0
    mem[(32 * sub_228aad4b) + 2016] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _2080 = mem[64]
            mem[64] = mem[64] + 320
            mem[_2080] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _2093 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_2093] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2093 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2093 + 32] = stor9[idx][1].field_0
                            s = _2093 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2093 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2093 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2093 + 32] = stor9[idx][1].field_0
                            s = _2093 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2093 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2080 + 32] = _2093
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _2105 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_2105] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2105 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2105 + 32] = stor9[idx][1].field_0
                            s = _2105 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2105 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2105 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2105 + 32] = stor9[idx][1].field_0
                            s = _2105 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2105 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2080 + 32] = _2105
            mem[_2080 + 64] = stor9[idx].field_512
            mem[_2080 + 96] = stor9[idx].field_768
            mem[_2080 + 128] = stor9[idx].field_1024
            mem[_2080 + 160] = stor9[idx].field_1032
            mem[_2080 + 192] = stor9[idx].field_1048
            mem[_2080 + 224] = bool(stor9[idx].field_1064)
            mem[_2080 + 256] = stor9[idx].field_1072
            mem[_2080 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _2080
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _2080
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _2083 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_2083 - 64
            _2234 = mem[s]
            mem[t] = mem[mem[s]]
            _2236 = mem[_2234 + 32]
            mem[t + 32] = 320
            _2238 = mem[_2236]
            mem[t + 320] = mem[_2236]
            v = 0
            while v < _2238:
                mem[v + t + 352] = mem[v + _2236 + 32]
                v = v + 32
                continue 
            if ceil32(_2238) > _2238:
                mem[t + _2238 + 352] = 0
            mem[t + 64] = mem[_2234 + 64]
            mem[t + 96] = mem[_2234 + 96]
            mem[t + 128] = mem[_2234 + 159 len 1]
            mem[t + 160] = mem[_2234 + 190 len 2]
            mem[t + 192] = mem[_2234 + 222 len 2]
            mem[t + 224] = bool(mem[_2234 + 224])
            mem[t + 256] = mem[_2234 + 287 len 1]
            mem[t + 288] = mem[_2234 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2238) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 2368
    mem[(32 * sub_228aad4b) + 2048] = 0
    mem[(32 * sub_228aad4b) + 2080] = 96
    mem[(32 * sub_228aad4b) + 2112] = 0
    mem[(32 * sub_228aad4b) + 2144] = 0
    mem[(32 * sub_228aad4b) + 2176] = 0
    mem[(32 * sub_228aad4b) + 2208] = 0
    mem[(32 * sub_228aad4b) + 2240] = 0
    mem[(32 * sub_228aad4b) + 2272] = 0
    mem[(32 * sub_228aad4b) + 2304] = 0
    mem[(32 * sub_228aad4b) + 2336] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _2406 = mem[64]
            mem[64] = mem[64] + 320
            mem[_2406] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _2419 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_2419] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2419 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2419 + 32] = stor9[idx][1].field_0
                            s = _2419 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2419 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2419 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2419 + 32] = stor9[idx][1].field_0
                            s = _2419 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2419 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2406 + 32] = _2419
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _2431 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_2431] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2431 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2431 + 32] = stor9[idx][1].field_0
                            s = _2431 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2431 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2431 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2431 + 32] = stor9[idx][1].field_0
                            s = _2431 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2431 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2406 + 32] = _2431
            mem[_2406 + 64] = stor9[idx].field_512
            mem[_2406 + 96] = stor9[idx].field_768
            mem[_2406 + 128] = stor9[idx].field_1024
            mem[_2406 + 160] = stor9[idx].field_1032
            mem[_2406 + 192] = stor9[idx].field_1048
            mem[_2406 + 224] = bool(stor9[idx].field_1064)
            mem[_2406 + 256] = stor9[idx].field_1072
            mem[_2406 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _2406
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _2406
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _2409 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_2409 - 64
            _2560 = mem[s]
            mem[t] = mem[mem[s]]
            _2562 = mem[_2560 + 32]
            mem[t + 32] = 320
            _2564 = mem[_2562]
            mem[t + 320] = mem[_2562]
            v = 0
            while v < _2564:
                mem[v + t + 352] = mem[v + _2562 + 32]
                v = v + 32
                continue 
            if ceil32(_2564) > _2564:
                mem[t + _2564 + 352] = 0
            mem[t + 64] = mem[_2560 + 64]
            mem[t + 96] = mem[_2560 + 96]
            mem[t + 128] = mem[_2560 + 159 len 1]
            mem[t + 160] = mem[_2560 + 190 len 2]
            mem[t + 192] = mem[_2560 + 222 len 2]
            mem[t + 224] = bool(mem[_2560 + 224])
            mem[t + 256] = mem[_2560 + 287 len 1]
            mem[t + 288] = mem[_2560 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2564) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_228aad4b) + 2688
    mem[(32 * sub_228aad4b) + 2368] = 0
    mem[(32 * sub_228aad4b) + 2400] = 96
    mem[(32 * sub_228aad4b) + 2432] = 0
    mem[(32 * sub_228aad4b) + 2464] = 0
    mem[(32 * sub_228aad4b) + 2496] = 0
    mem[(32 * sub_228aad4b) + 2528] = 0
    mem[(32 * sub_228aad4b) + 2560] = 0
    mem[(32 * sub_228aad4b) + 2592] = 0
    mem[(32 * sub_228aad4b) + 2624] = 0
    mem[(32 * sub_228aad4b) + 2656] = 0
    mem[var44002] = var44001
    if var44003 - 1:
        mem[64] = (32 * sub_228aad4b) + 3008
        mem[var48002] = var48001
        if not var48003 - 1:
            idx = 0
            while idx < sub_228aad4b:
                mem[0] = idx
                mem[32] = 9
                _3058 = mem[64]
                mem[64] = mem[64] + 320
                mem[_3058] = stor9[idx].field_0
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _3071 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                    mem[_3071] = uint255(stor9[idx].field_256) * 0.5
                    if stor9[idx].field_256:
                        if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9[idx].field_256):
                            mem[_3058 + 32] = _3071
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < uint255(stor9[idx].field_256) * 0.5:
                            # nil
                        else:
                            mem[_3071 + 32] = 256 * stor9[idx].field_264
                            mem[_3058 + 32] = _3071
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                            revert with 0, 34
                        if not stor9[idx].field_257:
                            mem[_3058 + 32] = _3071
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < stor9[idx].field_257:
                            # nil
                        else:
                            mem[_3071 + 32] = 256 * stor9[idx].field_264
                            mem[_3058 + 32] = _3071
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    _3083 = mem[64]
                    mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                    mem[_3083] = stor9[idx].field_257
                    if stor9[idx].field_256:
                        if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9[idx].field_256):
                            mem[_3058 + 32] = _3083
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < uint255(stor9[idx].field_256) * 0.5:
                            # nil
                        else:
                            mem[_3083 + 32] = 256 * stor9[idx].field_264
                            mem[_3058 + 32] = _3083
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                            revert with 0, 34
                        if not stor9[idx].field_257:
                            mem[_3058 + 32] = _3083
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < stor9[idx].field_257:
                            # nil
                        else:
                            mem[_3083 + 32] = 256 * stor9[idx].field_264
                            mem[_3058 + 32] = _3083
                            mem[_3058 + 64] = stor9[idx].field_512
                            mem[_3058 + 96] = stor9[idx].field_768
                            mem[_3058 + 128] = stor9[idx].field_1024
                            mem[_3058 + 160] = stor9[idx].field_1032
                            mem[_3058 + 192] = stor9[idx].field_1048
                            mem[_3058 + 224] = bool(stor9[idx].field_1064)
                            mem[_3058 + 256] = stor9[idx].field_1072
                            mem[_3058 + 288] = stor9[idx].field_1280
                            if not uint8(arg1):
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _3058
                            else:
                                if stor9[idx].field_1024 == uint8(arg1):
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _3058
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        # nil
    else:
        idx = 0
        while idx < sub_228aad4b:
            mem[0] = idx
            mem[32] = 9
            _2732 = mem[64]
            mem[64] = mem[64] + 320
            mem[_2732] = stor9[idx].field_0
            if stor9[idx].field_256:
                if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _2745 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_256) * 0.5) + 32
                mem[_2745] = uint255(stor9[idx].field_256) * 0.5
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2745 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2745 + 32] = stor9[idx][1].field_0
                            s = _2745 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2745 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2745 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2745 + 32] = stor9[idx][1].field_0
                            s = _2745 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2745 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2732 + 32] = _2745
            else:
                if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                    revert with 0, 34
                _2757 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_257) + 32
                mem[_2757] = stor9[idx].field_257
                if stor9[idx].field_256:
                    if stor9[idx].field_256 == uint255(stor9[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx].field_256):
                        if 31 >= uint255(stor9[idx].field_256) * 0.5:
                            mem[_2757 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2757 + 32] = stor9[idx][1].field_0
                            s = _2757 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2757 + (uint255(stor9[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_256 == stor9[idx].field_257 < 32:
                        revert with 0, 34
                    if stor9[idx].field_257:
                        if 31 >= stor9[idx].field_257:
                            mem[_2757 + 32] = 256 * stor9[idx].field_264
                        else:
                            mem[0] = sha3(idx, 9) + 1
                            mem[_2757 + 32] = stor9[idx][1].field_0
                            s = _2757 + 32
                            t = sha3(sha3(idx, 9) + 1)
                            while _2757 + stor9[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2732 + 32] = _2757
            mem[_2732 + 64] = stor9[idx].field_512
            mem[_2732 + 96] = stor9[idx].field_768
            mem[_2732 + 128] = stor9[idx].field_1024
            mem[_2732 + 160] = stor9[idx].field_1032
            mem[_2732 + 192] = stor9[idx].field_1048
            mem[_2732 + 224] = bool(stor9[idx].field_1064)
            mem[_2732 + 256] = stor9[idx].field_1072
            mem[_2732 + 288] = stor9[idx].field_1280
            if not uint8(arg1):
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _2732
            else:
                if stor9[idx].field_1024 == uint8(arg1):
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _2732
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[96] = 0
        _2735 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 0
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + 64
        while idx < 0:
            mem[u] = t + -_2735 - 64
            _2886 = mem[s]
            mem[t] = mem[mem[s]]
            _2888 = mem[_2886 + 32]
            mem[t + 32] = 320
            _2890 = mem[_2888]
            mem[t + 320] = mem[_2888]
            v = 0
            while v < _2890:
                mem[v + t + 352] = mem[v + _2888 + 32]
                v = v + 32
                continue 
            if ceil32(_2890) > _2890:
                mem[t + _2890 + 352] = 0
            mem[t + 64] = mem[_2886 + 64]
            mem[t + 96] = mem[_2886 + 96]
            mem[t + 128] = mem[_2886 + 159 len 1]
            mem[t + 160] = mem[_2886 + 190 len 2]
            mem[t + 192] = mem[_2886 + 222 len 2]
            mem[t + 224] = bool(mem[_2886 + 224])
            mem[t + 256] = mem[_2886 + 287 len 1]
            mem[t + 288] = mem[_2886 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2890) + t + 352
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
}



}
