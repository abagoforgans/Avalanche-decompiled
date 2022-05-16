contract main {




// =====================  Runtime code  =====================


const sub_c508ca8e(?) = block.timestamp


uint256 stor0;
mapping of uint8 stor1;
uint8 stor2;
uint8 stor2; offset 168
uint8 stor2; offset 176
uint128 stor2; offset 184
uint128 stor2; offset 176
address stor2;
address contractOwner; offset 8
uint256 stor2; offset 8
address sub_167d093bAddress;
uint256 sub_3966c4a0;
uint256 sub_9e10ec01;
uint256 sub_a26f546e;
uint256 sub_22ddf5d2;
uint256 sub_dc067574;
uint256 fee;
uint8 stor10;
uint8 stor10; offset 8
address stor10; offset 16
uint256 stor10; offset 16
uint256 stor10; offset 8
uint256 stor10;
uint256 sub_5662ecc7;
mapping of struct sub_00b4fa3e;

function sub_00b4fa3e(?) {
    require calldata.size - 4 >= 32
    return sub_00b4fa3e[arg1].field_0, 
           sub_00b4fa3e[arg1].field_256,
           sub_00b4fa3e[arg1].field_512,
           sub_00b4fa3e[arg1].field_768,
           bool(sub_00b4fa3e[arg1].field_928),
           sub_00b4fa3e[arg1].field_1024,
           sub_00b4fa3e[arg1].field_1280,
           sub_00b4fa3e[arg1].field_1536,
           sub_00b4fa3e[arg1].field_1792,
           sub_00b4fa3e[arg1].field_2048,
           sub_00b4fa3e[arg1].field_2304,
           bool(sub_00b4fa3e[arg1].field_2560),
           bool(sub_00b4fa3e[arg1].field_2568)
}

function sub_02b2fcc5(?) {
    return bool(uint8(stor2.field_0))
}

function sub_167d093b(?) {
    return sub_167d093bAddress
}

function sub_22ddf5d2(?) {
    return sub_22ddf5d2
}

function sub_2f3f7d7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_3966c4a0(?) {
    return sub_3966c4a0
}

function sub_5662ecc7(?) {
    return sub_5662ecc7
}

function ContractOwner() {
    return contractOwner
}

function sub_9e10ec01(?) {
    return sub_9e10ec01
}

function sub_a26f546e(?) {
    return sub_a26f546e
}

function sub_a4c713cc(?) {
    return bool(uint8(stor2.field_176))
}

function Fee() {
    return fee
}

function sub_d33e61f7(?) {
    return bool(uint8(stor2.field_168))
}

function sub_dc067574(?) {
    return sub_dc067574
}

function AllowToken(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    stor1[address(arg1)] = uint8(arg2)
    stor0 = 1
}

function sub_e2331eb4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c8a832d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_1ba1640f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8c803f91(?) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg2:
        revert with 0, '_Premium >0'
    if sub_00b4fa3e[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of this Purchased option.'
    sub_00b4fa3e[arg1].field_1280 = arg2
    if sha3(arg3[all]) != sha3(439721161573):
        sub_00b4fa3e[arg1].field_2568 = 1
    else:
        sub_00b4fa3e[arg1].field_2568 = 0
    stor0 = 1
}

function sub_86468c42(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 12
        sub_00b4fa3e[mem[(32 * idx) + 128]].field_2560 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
    return 1
}

function sub_681f7aaa(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg7 == bool(arg7)
    require arg9 == bool(arg9)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    fee = arg2
    sub_9e10ec01 = arg6
    uint8(stor2.field_0) = uint8(bool(arg7))
    Mask(248, 0, stor2.field_8) = contractOwner
    uint8(stor2.field_168) = uint8(bool(arg4))
    Mask(80, 0, stor2.field_176) = Mask(80, 0, bool(arg5))
    Mask(72, 0, stor2.field_184) = Mask(72, 16, bool(arg4)) >> 16
    sub_a26f546e = arg8
    uint8(stor10.field_0) = uint8(0xffffffffffffffffffff0000000000000000000000000000000000000000ff00 and uint256(stor10.field_0))
    uint8(stor10.field_0) = uint8(bool(arg3))
    Mask(248, 0, stor10.field_8) = Mask(248, 0, bool(arg9))
    Mask(240, 0, stor10.field_16) = Mask(240, 16, 0xffffffffffffffffffff0000000000000000000000000000000000000000ff00 and uint256(stor10.field_0)) >> 16
    address(stor10.field_16) = address(arg1)
    Mask(240, 0, stor10.field_16) = Mask(240, 16, bool(arg3)) >> 16
    stor0 = 1
}

function sub_5d03704c(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if sub_00b4fa3e[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The msg.sender has to be the seller'
    if not sub_00b4fa3e[arg1].field_2560:
        revert with 0, 'Option is not valid'
    if sub_00b4fa3e[arg1].field_512 != this.address:
        if sub_00b4fa3e[arg1].field_1536 > !sub_dc067574:
            revert with 0, 17
        if 24 * 3600 > !(sub_00b4fa3e[arg1].field_1536 + sub_dc067574):
            revert with 0, 17
        if block.timestamp <= sub_00b4fa3e[arg1].field_1536 + sub_dc067574 + (24 * 3600):
            stor0 = 1
            return 0
    if not sub_00b4fa3e[arg1].field_928:
        call sub_00b4fa3e[arg1].field_768.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_00b4fa3e[arg1].field_1792
    else:
        call sub_167d093bAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_00b4fa3e[arg1].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_00b4fa3e[arg1].field_2560 = 0
    stor0 = 1
    return 1
}

function sub_9746bb7e(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp >= sub_00b4fa3e[arg1].field_1536:
        revert with 0, 'This option expired'
    if arg3 > sub_9e10ec01:
        revert with 0, 'solo fee too high.'
    if msg.sender == sub_00b4fa3e[arg1].field_256:
        revert with 0, 'Can't buy your own Option.'
    if bool(sub_00b4fa3e[arg1].field_2560) != 1:
        revert with 0, 'This option is no longer valid'
    call address(stor10.field_16).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_00b4fa3e[arg1].field_256, sub_00b4fa3e[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please ensure that you have approved this contract to handle your DAI (error)'
    if uint8(stor10.field_0):
        call address(stor10.field_16).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor2.field_0), fee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer Fee error..'
    if uint8(stor2.field_176):
        call address(stor10.field_16).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer solo Fee error..'
    sub_00b4fa3e[arg1].field_512 = msg.sender or Mask(96, 160, sub_00b4fa3e[arg1].field_512)
    emit 0x721702d7: arg1, msg.sender, sub_00b4fa3e[arg1].field_1280
    stor0 = 1
    return 1
}

function sub_33338977(?) {
    if sub_5662ecc7 > test266151307():
        revert with 0, 65
    mem[96] = sub_5662ecc7
    mem[64] = (32 * sub_5662ecc7) + 128
    if not sub_5662ecc7:
        idx = 0
        while idx < sub_5662ecc7:
            mem[0] = idx
            mem[32] = 12
            _44 = mem[64]
            mem[64] = mem[64] + 416
            mem[_44] = sub_00b4fa3e[idx].field_0
            mem[_44 + 32] = sub_00b4fa3e[idx].field_256
            mem[_44 + 64] = sub_00b4fa3e[idx].field_512
            mem[_44 + 96] = sub_00b4fa3e[idx].field_768
            mem[_44 + 128] = bool(sub_00b4fa3e[idx].field_928)
            mem[_44 + 160] = sub_00b4fa3e[idx].field_1024
            mem[_44 + 192] = sub_00b4fa3e[idx].field_1280
            mem[_44 + 224] = sub_00b4fa3e[idx].field_1536
            mem[_44 + 256] = sub_00b4fa3e[idx].field_1792
            mem[_44 + 288] = sub_00b4fa3e[idx].field_2048
            mem[_44 + 320] = sub_00b4fa3e[idx].field_2304
            mem[_44 + 352] = bool(sub_00b4fa3e[idx].field_2560)
            mem[_44 + 384] = bool(sub_00b4fa3e[idx].field_2568)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _44
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _47 = mem[64]
        mem[mem[64]] = 32
        _48 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _48:
            _85 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_85 + 44 len 20]
            mem[t + 64] = mem[_85 + 76 len 20]
            mem[t + 96] = mem[_85 + 108 len 20]
            mem[t + 128] = bool(mem[_85 + 128])
            mem[t + 160] = mem[_85 + 160]
            mem[t + 192] = mem[_85 + 192]
            mem[t + 224] = mem[_85 + 224]
            mem[t + 256] = mem[_85 + 256]
            mem[t + 288] = mem[_85 + 288]
            mem[t + 320] = mem[_85 + 320]
            mem[t + 352] = bool(mem[_85 + 352])
            mem[t + 384] = bool(mem[_85 + 384])
            idx = idx + 1
            s = s + 32
            t = t + 416
            continue 
        return memory
          from mem[64]
           len _47 + (416 * _48) + -mem[64] + 64
    mem[64] = (32 * sub_5662ecc7) + 544
    mem[(32 * sub_5662ecc7) + 128] = 0
    mem[(32 * sub_5662ecc7) + 160] = 0
    mem[(32 * sub_5662ecc7) + 192] = 0
    mem[(32 * sub_5662ecc7) + 224] = 0
    mem[(32 * sub_5662ecc7) + 256] = 0
    mem[(32 * sub_5662ecc7) + 288] = 0
    mem[(32 * sub_5662ecc7) + 320] = 0
    mem[(32 * sub_5662ecc7) + 352] = 0
    mem[(32 * sub_5662ecc7) + 384] = 0
    mem[(32 * sub_5662ecc7) + 416] = 0
    mem[(32 * sub_5662ecc7) + 448] = 0
    mem[(32 * sub_5662ecc7) + 480] = 0
    mem[(32 * sub_5662ecc7) + 512] = 0
    mem[var9001] = (32 * sub_5662ecc7) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 416
        mem[(32 * sub_5662ecc7) + 128] = 0
        mem[(32 * sub_5662ecc7) + 160] = 0
        mem[(32 * sub_5662ecc7) + 192] = 0
        mem[(32 * sub_5662ecc7) + 224] = 0
        mem[(32 * sub_5662ecc7) + 256] = 0
        mem[(32 * sub_5662ecc7) + 288] = 0
        mem[(32 * sub_5662ecc7) + 320] = 0
        mem[(32 * sub_5662ecc7) + 352] = 0
        mem[(32 * sub_5662ecc7) + 384] = 0
        mem[(32 * sub_5662ecc7) + 416] = 0
        mem[(32 * sub_5662ecc7) + 448] = 0
        mem[(32 * sub_5662ecc7) + 480] = 0
        mem[(32 * sub_5662ecc7) + 512] = 0
        mem[s + 32] = (32 * sub_5662ecc7) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_5662ecc7:
        mem[0] = idx
        mem[32] = 12
        _121 = mem[64]
        mem[64] = mem[64] + 416
        mem[_121] = sub_00b4fa3e[idx].field_0
        mem[_121 + 32] = sub_00b4fa3e[idx].field_256
        mem[_121 + 64] = sub_00b4fa3e[idx].field_512
        mem[_121 + 96] = sub_00b4fa3e[idx].field_768
        mem[_121 + 128] = bool(sub_00b4fa3e[idx].field_928)
        mem[_121 + 160] = sub_00b4fa3e[idx].field_1024
        mem[_121 + 192] = sub_00b4fa3e[idx].field_1280
        mem[_121 + 224] = sub_00b4fa3e[idx].field_1536
        mem[_121 + 256] = sub_00b4fa3e[idx].field_1792
        mem[_121 + 288] = sub_00b4fa3e[idx].field_2048
        mem[_121 + 320] = sub_00b4fa3e[idx].field_2304
        mem[_121 + 352] = bool(sub_00b4fa3e[idx].field_2560)
        mem[_121 + 384] = bool(sub_00b4fa3e[idx].field_2568)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _121
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _123 = mem[64]
    mem[mem[64]] = 32
    _124 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _124:
        _140 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_140 + 44 len 20]
        mem[t + 64] = mem[_140 + 76 len 20]
        mem[t + 96] = mem[_140 + 108 len 20]
        mem[t + 128] = bool(mem[_140 + 128])
        mem[t + 160] = mem[_140 + 160]
        mem[t + 192] = mem[_140 + 192]
        mem[t + 224] = mem[_140 + 224]
        mem[t + 256] = mem[_140 + 256]
        mem[t + 288] = mem[_140 + 288]
        mem[t + 320] = mem[_140 + 320]
        mem[t + 352] = bool(mem[_140 + 352])
        mem[t + 384] = bool(mem[_140 + 384])
        idx = idx + 1
        s = s + 32
        t = t + 416
        continue 
    return memory
      from mem[64]
       len _123 + (416 * _124) + -mem[64] + 64
}

function sub_00ea5b9b(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor2.field_168):
        revert with 0, 'not allow write option rightnow'
    if arg3 <= 0:
        revert with 0, 'must > 0'
    if arg4 <= 0:
        revert with 0, 'must > 0'
    if arg6 <= 0:
        revert with 0, 'must > 0'
    if arg5 <= sub_a26f546e:
        revert with 0, 'expire time too short.'
    if sub_167d093bAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This coin is BaseCoin,input other coin please.'
    if uint8(stor2.field_0):
        if not stor1[address(arg1)]:
            revert with 0, 'This token is not allow'
    if uint8(stor10.field_8):
        call address(stor10.field_16).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor2.field_0), fee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer Write option Fee error..'
    if arg2:
        staticcall sub_167d093bAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, '0 decimals not allowed'
        staticcall sub_167d093bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call sub_167d093bAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall sub_167d093bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg6:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] + arg6:
            revert with 0, 'Could not transfer the amount from msg.sender that was requested'
        if arg5 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * arg5):
            revert with 0, 17
        sub_00b4fa3e[stor11].field_0 = sub_5662ecc7
        sub_00b4fa3e[stor11].field_256 = msg.sender
        sub_00b4fa3e[stor11].field_512 = this.address
        sub_00b4fa3e[stor11].field_768 = address(arg1)
        sub_00b4fa3e[stor11].field_928 = Mask(96, 0, bool(arg2))
        sub_00b4fa3e[stor11].field_1024 = arg3
        sub_00b4fa3e[stor11].field_1280 = arg4
        sub_00b4fa3e[stor11].field_1536 = block.timestamp + (24 * 3600 * arg5)
        sub_00b4fa3e[stor11].field_1792 = arg6
        sub_00b4fa3e[stor11].field_2048 = sub_22ddf5d2
    else:
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, '0 decimals not allowed'
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg6:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] + arg6:
            revert with 0, 'Could not transfer the amount from msg.sender that was requested'
        if arg5 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * arg5):
            revert with 0, 17
        sub_00b4fa3e[stor11].field_0 = sub_5662ecc7
        sub_00b4fa3e[stor11].field_256 = msg.sender
        sub_00b4fa3e[stor11].field_512 = this.address
        sub_00b4fa3e[stor11].field_768 = address(arg1)
        sub_00b4fa3e[stor11].field_928 = Mask(96, 0, bool(arg2))
        sub_00b4fa3e[stor11].field_1024 = arg3
        sub_00b4fa3e[stor11].field_1280 = arg4
        sub_00b4fa3e[stor11].field_1536 = block.timestamp + (24 * 3600 * arg5)
        sub_00b4fa3e[stor11].field_1792 = arg6
        sub_00b4fa3e[stor11].field_2048 = uint8(ext_call.return_data[0])
        sub_00b4fa3e[stor11].field_2056 = 0
    sub_00b4fa3e[stor11].field_2304 = block.timestamp
    sub_00b4fa3e[stor11].field_2560 = 1
    sub_00b4fa3e[stor11].field_2568 = 1
    if sub_5662ecc7 > -2:
        revert with 0, 17
    sub_5662ecc7++
    stor0 = 1
    return (sub_5662ecc7 + 1)
}

function Test(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if not arg4:
        if not arg2:
            revert with 0, 18
        if not arg3:
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            if 1 / arg2 and arg1 > -1 / 1 / arg2:
                revert with 0, 17
            if 1 / arg2 * arg1 <= 0:
                revert with 0, 'have not enough dai.'
            if not arg4:
                return (1 / arg2 * arg1)
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if not 10^arg4:
                    revert with 0, 18
                return (1 / arg2 * arg1 / 10^arg4)
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
            return (1 / arg2 * arg1 / s * t)
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if arg1 and 10^arg3 > -1 / arg1:
                revert with 0, 17
            if 1 / arg2 and arg1 * 10^arg3 > -1 / 1 / arg2:
                revert with 0, 17
            if 1 / arg2 * arg1 * 10^arg3 <= 0:
                revert with 0, 'have not enough dai.'
            if not arg4:
                return (1 / arg2 * arg1 * 10^arg3)
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if not 10^arg4:
                    revert with 0, 18
                return (1 / arg2 * arg1 * 10^arg3 / 10^arg4)
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
            return (1 / arg2 * arg1 * 10^arg3 / s * t)
        s = 10
        t = 1
        idx = arg3
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
        if arg1 and s * t > -1 / arg1:
            revert with 0, 17
        if 1 / arg2 and arg1 * s * t > -1 / 1 / arg2:
            revert with 0, 17
        if 1 / arg2 * arg1 * s * t <= 0:
            revert with 0, 'have not enough dai.'
        if not arg4:
            return (1 / arg2 * arg1 * s * t)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not 10^arg4:
                revert with 0, 18
            return (1 / arg2 * arg1 * s * t / 10^arg4)
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
        return (1 / arg2 * arg1 * s * t / u * v)
    if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
        if 10^arg4 > -1:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if not arg3:
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            if 10^arg4 / arg2 and arg1 > -1 / 10^arg4 / arg2:
                revert with 0, 17
            if 10^arg4 / arg2 * arg1 <= 0:
                revert with 0, 'have not enough dai.'
            if not arg4:
                return (10^arg4 / arg2 * arg1)
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if not 10^arg4:
                    revert with 0, 18
                return (10^arg4 / arg2 * arg1 / 10^arg4)
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
            return (10^arg4 / arg2 * arg1 / s * t)
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if arg1 and 10^arg3 > -1 / arg1:
                revert with 0, 17
            if 10^arg4 / arg2 and arg1 * 10^arg3 > -1 / 10^arg4 / arg2:
                revert with 0, 17
            if 10^arg4 / arg2 * arg1 * 10^arg3 <= 0:
                revert with 0, 'have not enough dai.'
            if not arg4:
                return (10^arg4 / arg2 * arg1 * 10^arg3)
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                if not 10^arg4:
                    revert with 0, 18
                return (10^arg4 / arg2 * arg1 * 10^arg3 / 10^arg4)
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
            return (10^arg4 / arg2 * arg1 * 10^arg3 / s * t)
        s = 10
        t = 1
        idx = arg3
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
        if arg1 and s * t > -1 / arg1:
            revert with 0, 17
        if 10^arg4 / arg2 and arg1 * s * t > -1 / 10^arg4 / arg2:
            revert with 0, 17
        if 10^arg4 / arg2 * arg1 * s * t <= 0:
            revert with 0, 'have not enough dai.'
        if not arg4:
            return (10^arg4 / arg2 * arg1 * s * t)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not 10^arg4:
                revert with 0, 18
            return (10^arg4 / arg2 * arg1 * s * t / 10^arg4)
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
        return (10^arg4 / arg2 * arg1 * s * t / u * v)
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
    if s * t > -1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if not arg3:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if s * t / arg2 and arg1 > -1 / s * t / arg2:
            revert with 0, 17
        if s * t / arg2 * arg1 <= 0:
            revert with 0, 'have not enough dai.'
        if not arg4:
            return (s * t / arg2 * arg1)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not 10^arg4:
                revert with 0, 18
            return (s * t / arg2 * arg1 / 10^arg4)
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
        return (s * t / arg2 * arg1 / u * v)
    if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
        if arg1 and 10^arg3 > -1 / arg1:
            revert with 0, 17
        if s * t / arg2 and arg1 * 10^arg3 > -1 / s * t / arg2:
            revert with 0, 17
        if s * t / arg2 * arg1 * 10^arg3 <= 0:
            revert with 0, 'have not enough dai.'
        if not arg4:
            return (s * t / arg2 * arg1 * 10^arg3)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not 10^arg4:
                revert with 0, 18
            return (s * t / arg2 * arg1 * 10^arg3 / 10^arg4)
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
        return (s * t / arg2 * arg1 * 10^arg3 / u * v)
    u = 10
    v = 1
    idx = arg3
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
    if arg1 and u * v > -1 / arg1:
        revert with 0, 17
    if s * t / arg2 and arg1 * u * v > -1 / s * t / arg2:
        revert with 0, 17
    if s * t / arg2 * arg1 * u * v <= 0:
        revert with 0, 'have not enough dai.'
    if not arg4:
        return (s * t / arg2 * arg1 * u * v)
    if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
        if not 10^arg4:
            revert with 0, 18
        return (s * t / arg2 * arg1 * u * v / 10^arg4)
    w = 10
    x = 1
    idx = arg4
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if not w * x:
        revert with 0, 18
    return (s * t / arg2 * arg1 * u * v / w * x)
}

function sub_1ead5ea8(?) {
    require calldata.size - 4 >= 32
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        if sub_5662ecc7 >= 1:
            if sub_5662ecc7 >= arg1:
                if var30002 < sub_5662ecc7 - arg1:
                    mem[(32 * arg1) + 128] = 32
                    mem[(32 * arg1) + 160] = arg1
                    idx = 0
                    s = 128
                    t = (32 * arg1) + 192
                    while idx < mem[96]:
                        _225 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_225 + 44 len 20]
                        mem[t + 64] = mem[_225 + 76 len 20]
                        mem[t + 96] = mem[_225 + 108 len 20]
                        mem[t + 128] = bool(mem[_225 + 128])
                        mem[t + 160] = mem[_225 + 160]
                        mem[t + 192] = mem[_225 + 192]
                        mem[t + 224] = mem[_225 + 224]
                        mem[t + 256] = mem[_225 + 256]
                        mem[t + 288] = mem[_225 + 288]
                        mem[t + 320] = mem[_225 + 320]
                        mem[t + 352] = bool(mem[_225 + 352])
                        mem[t + 384] = bool(mem[_225 + 384])
                        idx = idx + 1
                        s = s + 32
                        t = t + 416
                        continue 
                    return memory
                      from mem[64]
                       len (449 * arg1) + -mem[64] + 192
                mem[0] = var32001
                mem[32] = 12
                mem[64] = (32 * arg1) + 544
                mem[(32 * arg1) + 128] = sub_00b4fa3e[var32001].field_0
                mem[(32 * arg1) + 160] = sub_00b4fa3e[var32001].field_256
                mem[(32 * arg1) + 192] = sub_00b4fa3e[var32001].field_512
                mem[(32 * arg1) + 224] = sub_00b4fa3e[var32001].field_768
                mem[(32 * arg1) + 256] = bool(sub_00b4fa3e[var32001].field_928)
                mem[(32 * arg1) + 288] = sub_00b4fa3e[var32001].field_1024
                mem[(32 * arg1) + 320] = sub_00b4fa3e[var32001].field_1280
                mem[(32 * arg1) + 352] = sub_00b4fa3e[var32001].field_1536
                mem[(32 * arg1) + 384] = sub_00b4fa3e[var32001].field_1792
                mem[(32 * arg1) + 416] = sub_00b4fa3e[var32001].field_2048
                mem[(32 * arg1) + 448] = sub_00b4fa3e[var32001].field_2304
                mem[(32 * arg1) + 480] = bool(sub_00b4fa3e[var32001].field_2560)
                mem[(32 * arg1) + 512] = bool(sub_00b4fa3e[var32001].field_2568)
                if var32002 >= arg1:
                    revert with 0, 50
                mem[(32 * var32002) + 128] = (32 * arg1) + 128
                s = var32002
                t = (32 * arg1) + 128
                u = 0
                u = var32001
                idx = var32002
                while idx != -1:
                    if not u:
                        revert with 0, 17
                    if sub_5662ecc7 < arg1:
                        revert with 0, 17
                    if u - 1 < sub_5662ecc7 - arg1:
                        _303 = mem[64]
                        mem[mem[64]] = 32
                        _304 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        u = 128
                        v = mem[64] + 64
                        while idx < _304:
                            _340 = mem[u]
                            mem[v] = mem[mem[u]]
                            mem[v + 32] = mem[_340 + 44 len 20]
                            mem[v + 64] = mem[_340 + 76 len 20]
                            mem[v + 96] = mem[_340 + 108 len 20]
                            mem[v + 128] = bool(mem[_340 + 128])
                            mem[v + 160] = mem[_340 + 160]
                            mem[v + 192] = mem[_340 + 192]
                            mem[v + 224] = mem[_340 + 224]
                            mem[v + 256] = mem[_340 + 256]
                            mem[v + 288] = mem[_340 + 288]
                            mem[v + 320] = mem[_340 + 320]
                            mem[v + 352] = bool(mem[_340 + 352])
                            mem[v + 384] = bool(mem[_340 + 384])
                            mem[(32 * s) + 128] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 416
                            continue 
                        return memory
                          from mem[64]
                           len _303 + (416 * _304) + -mem[64] + 64
                    mem[0] = u - 1
                    mem[32] = 12
                    _301 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_301] = sub_00b4fa3e[u - 1].field_0
                    mem[_301 + 32] = sub_00b4fa3e[u - 1].field_256
                    mem[_301 + 64] = sub_00b4fa3e[u - 1].field_512
                    mem[_301 + 96] = sub_00b4fa3e[u - 1].field_768
                    mem[_301 + 128] = bool(sub_00b4fa3e[u - 1].field_928)
                    mem[_301 + 160] = sub_00b4fa3e[u - 1].field_1024
                    mem[_301 + 192] = sub_00b4fa3e[u - 1].field_1280
                    mem[_301 + 224] = sub_00b4fa3e[u - 1].field_1536
                    mem[_301 + 256] = sub_00b4fa3e[u - 1].field_1792
                    mem[_301 + 288] = sub_00b4fa3e[u - 1].field_2048
                    mem[_301 + 320] = sub_00b4fa3e[u - 1].field_2304
                    mem[_301 + 352] = bool(sub_00b4fa3e[u - 1].field_2560)
                    mem[_301 + 384] = bool(sub_00b4fa3e[u - 1].field_2568)
                    if idx + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx + 2) + 128] = _301
                    s = idx + 1
                    t = _301
                    u = sha3(u - 1, 12)
                    u = u - 1
                    idx = idx + 1
                    continue 
    else:
        mem[64] = (32 * arg1) + 544
        mem[(32 * arg1) + 128] = 0
        mem[(32 * arg1) + 160] = 0
        mem[(32 * arg1) + 192] = 0
        mem[(32 * arg1) + 224] = 0
        mem[(32 * arg1) + 256] = 0
        mem[(32 * arg1) + 288] = 0
        mem[(32 * arg1) + 320] = 0
        mem[(32 * arg1) + 352] = 0
        mem[(32 * arg1) + 384] = 0
        mem[(32 * arg1) + 416] = 0
        mem[(32 * arg1) + 448] = 0
        mem[(32 * arg1) + 480] = 0
        mem[(32 * arg1) + 512] = 0
        mem[var12001] = (32 * arg1) + 128
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[(32 * arg1) + 128] = 0
            mem[(32 * arg1) + 160] = 0
            mem[(32 * arg1) + 192] = 0
            mem[(32 * arg1) + 224] = 0
            mem[(32 * arg1) + 256] = 0
            mem[(32 * arg1) + 288] = 0
            mem[(32 * arg1) + 320] = 0
            mem[(32 * arg1) + 352] = 0
            mem[(32 * arg1) + 384] = 0
            mem[(32 * arg1) + 416] = 0
            mem[(32 * arg1) + 448] = 0
            mem[(32 * arg1) + 480] = 0
            mem[(32 * arg1) + 512] = 0
            mem[s + 32] = (32 * arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if sub_5662ecc7 >= 1:
            if sub_5662ecc7 >= arg1:
                if var37002 < sub_5662ecc7 - arg1:
                    _283 = mem[64]
                    mem[mem[64]] = 32
                    _284 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 64
                    while idx < _284:
                        _354 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_354 + 44 len 20]
                        mem[t + 64] = mem[_354 + 76 len 20]
                        mem[t + 96] = mem[_354 + 108 len 20]
                        mem[t + 128] = bool(mem[_354 + 128])
                        mem[t + 160] = mem[_354 + 160]
                        mem[t + 192] = mem[_354 + 192]
                        mem[t + 224] = mem[_354 + 224]
                        mem[t + 256] = mem[_354 + 256]
                        mem[t + 288] = mem[_354 + 288]
                        mem[t + 320] = mem[_354 + 320]
                        mem[t + 352] = bool(mem[_354 + 352])
                        mem[t + 384] = bool(mem[_354 + 384])
                        idx = idx + 1
                        s = s + 32
                        t = t + 416
                        continue 
                    return memory
                      from mem[64]
                       len _283 + (416 * _284) + -mem[64] + 64
                mem[0] = var39001
                mem[32] = 12
                _338 = mem[64]
                mem[64] = mem[64] + 416
                mem[_338] = sub_00b4fa3e[var39001].field_0
                mem[_338 + 32] = sub_00b4fa3e[var39001].field_256
                mem[_338 + 64] = sub_00b4fa3e[var39001].field_512
                mem[_338 + 96] = sub_00b4fa3e[var39001].field_768
                mem[_338 + 128] = bool(sub_00b4fa3e[var39001].field_928)
                mem[_338 + 160] = sub_00b4fa3e[var39001].field_1024
                mem[_338 + 192] = sub_00b4fa3e[var39001].field_1280
                mem[_338 + 224] = sub_00b4fa3e[var39001].field_1536
                mem[_338 + 256] = sub_00b4fa3e[var39001].field_1792
                mem[_338 + 288] = sub_00b4fa3e[var39001].field_2048
                mem[_338 + 320] = sub_00b4fa3e[var39001].field_2304
                mem[_338 + 352] = bool(sub_00b4fa3e[var39001].field_2560)
                mem[_338 + 384] = bool(sub_00b4fa3e[var39001].field_2568)
                if var39002 >= mem[96]:
                    revert with 0, 50
                mem[(32 * var39002) + 128] = _338
                s = var39002
                t = _338
                u = 0
                u = var39001
                idx = var39002
                while idx != -1:
                    if not u:
                        revert with 0, 17
                    if sub_5662ecc7 < arg1:
                        revert with 0, 17
                    if u - 1 < sub_5662ecc7 - arg1:
                        _393 = mem[64]
                        mem[mem[64]] = 32
                        _394 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        u = 128
                        v = mem[64] + 64
                        while idx < _394:
                            _410 = mem[u]
                            mem[v] = mem[mem[u]]
                            mem[v + 32] = mem[_410 + 44 len 20]
                            mem[v + 64] = mem[_410 + 76 len 20]
                            mem[v + 96] = mem[_410 + 108 len 20]
                            mem[v + 128] = bool(mem[_410 + 128])
                            mem[v + 160] = mem[_410 + 160]
                            mem[v + 192] = mem[_410 + 192]
                            mem[v + 224] = mem[_410 + 224]
                            mem[v + 256] = mem[_410 + 256]
                            mem[v + 288] = mem[_410 + 288]
                            mem[v + 320] = mem[_410 + 320]
                            mem[v + 352] = bool(mem[_410 + 352])
                            mem[v + 384] = bool(mem[_410 + 384])
                            mem[(32 * s) + 128] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 416
                            continue 
                        return memory
                          from mem[64]
                           len _393 + (416 * _394) + -mem[64] + 64
                    mem[0] = u - 1
                    mem[32] = 12
                    _391 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_391] = sub_00b4fa3e[u - 1].field_0
                    mem[_391 + 32] = sub_00b4fa3e[u - 1].field_256
                    mem[_391 + 64] = sub_00b4fa3e[u - 1].field_512
                    mem[_391 + 96] = sub_00b4fa3e[u - 1].field_768
                    mem[_391 + 128] = bool(sub_00b4fa3e[u - 1].field_928)
                    mem[_391 + 160] = sub_00b4fa3e[u - 1].field_1024
                    mem[_391 + 192] = sub_00b4fa3e[u - 1].field_1280
                    mem[_391 + 224] = sub_00b4fa3e[u - 1].field_1536
                    mem[_391 + 256] = sub_00b4fa3e[u - 1].field_1792
                    mem[_391 + 288] = sub_00b4fa3e[u - 1].field_2048
                    mem[_391 + 320] = sub_00b4fa3e[u - 1].field_2304
                    mem[_391 + 352] = bool(sub_00b4fa3e[u - 1].field_2560)
                    mem[_391 + 384] = bool(sub_00b4fa3e[u - 1].field_2568)
                    if idx + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx + 2) + 128] = _391
                    s = idx + 1
                    t = _391
                    u = sha3(u - 1, 12)
                    u = u - 1
                    idx = idx + 1
                    continue 
    revert with 0, 17
}

function sub_23cfbf1a(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if sub_00b4fa3e[arg1].field_512 != msg.sender:
        revert with 0, 'you are Not Purchaser.'
    if bool(sub_00b4fa3e[arg1].field_2560) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This option has already been excersized'
    if block.timestamp < sub_00b4fa3e[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This option has not reached its excersize timestamp yet'
    if sub_00b4fa3e[arg1].field_1536 > !sub_dc067574:
        revert with 0, 17
    if block.timestamp > sub_00b4fa3e[arg1].field_1536 + sub_dc067574:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Its too late to exersize your option'
    staticcall sub_00b4fa3e[arg1].field_768.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0, '0 decimal is not allowed.'
    if not sub_00b4fa3e[arg1].field_928:
        if not ext_call.return_data[31 len 1]:
            if sub_00b4fa3e[arg1].field_1792 and sub_00b4fa3e[arg1].field_1024 > -1 / sub_00b4fa3e[arg1].field_1792:
                revert with 0, 17
            if sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 <= 0:
                revert with 0, 'you have not enough token send to Writer.'
            call sub_167d093bAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_00b4fa3e[arg1].field_256, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
            sub_00b4fa3e[arg1].field_2560 = 0
            call sub_00b4fa3e[arg1].field_768.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x5fd7d800: arg1, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024, block.timestamp
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if sub_00b4fa3e[arg1].field_1792 and sub_00b4fa3e[arg1].field_1024 > -1 / sub_00b4fa3e[arg1].field_1792:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'you have not enough token send to Writer.'
                call sub_167d093bAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[arg1].field_256, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[arg1].field_2560 = 0
                call sub_00b4fa3e[arg1].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: arg1, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / 10^uint8(ext_call.return_data[0]), block.timestamp
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if sub_00b4fa3e[arg1].field_1792 and sub_00b4fa3e[arg1].field_1024 > -1 / sub_00b4fa3e[arg1].field_1792:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / s * t <= 0:
                    revert with 0, 'you have not enough token send to Writer.'
                call sub_167d093bAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[arg1].field_256, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[arg1].field_2560 = 0
                call sub_00b4fa3e[arg1].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: arg1, sub_00b4fa3e[arg1].field_1792 * sub_00b4fa3e[arg1].field_1024 / s * t, block.timestamp
    else:
        if not sub_00b4fa3e[arg1].field_1024:
            revert with 0, 18
        if not ext_call.return_data[31 len 1]:
            if sub_00b4fa3e[arg1].field_1792 and 1 > -1 / sub_00b4fa3e[arg1].field_1792:
                revert with 0, 17
            if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 and sub_00b4fa3e[arg1].field_1792 > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024:
                revert with 0, 17
            if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 / 1000000000000 * 10^18 <= 0:
                revert with 0, 'have not enough dai send to Writer.'
            call sub_00b4fa3e[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_00b4fa3e[arg1].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 / 1000000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
            sub_00b4fa3e[arg1].field_2560 = 0
            call sub_167d093bAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x5fd7d800: arg1, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 / 1000000000000 * 10^18, block.timestamp
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if sub_00b4fa3e[arg1].field_1792 and 10^ext_call.return_data[31 len 1] > -1 / sub_00b4fa3e[arg1].field_1792:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 and sub_00b4fa3e[arg1].field_1792 * 10^ext_call.return_data[31 len 1] > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * 10^ext_call.return_data[31 len 1] / 1000000000000 * 10^18 <= 0:
                    revert with 0, 'have not enough dai send to Writer.'
                call sub_00b4fa3e[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[arg1].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * 10^uint8(ext_call.return_data[0]) / 1000000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[arg1].field_2560 = 0
                call sub_167d093bAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: arg1, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * 10^uint8(ext_call.return_data[0]) / 1000000000000 * 10^18, block.timestamp
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if sub_00b4fa3e[arg1].field_1792 and s * t > -1 / sub_00b4fa3e[arg1].field_1792:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 and sub_00b4fa3e[arg1].field_1792 * s * t > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * s * t / 1000000000000 * 10^18 <= 0:
                    revert with 0, 'have not enough dai send to Writer.'
                call sub_00b4fa3e[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[arg1].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * s * t / 1000000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[arg1].field_2560 = 0
                call sub_167d093bAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[arg1].field_512, sub_00b4fa3e[arg1].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: arg1, 1000000000000 * 10^18 / sub_00b4fa3e[arg1].field_1024 * sub_00b4fa3e[arg1].field_1792 * s * t / 1000000000000 * 10^18, block.timestamp
    stor0 = 1
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x5a63fbc9(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa26f546e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd33e61f7(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xa26f546e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_a26f546e
                if unknown_0xa4c713cc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor2.field_176))
                if unknown_0xbef7a2f0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return fee
                if uint32(call.func_hash) >> 224 != unknown_0xc508ca8e(?????):
                require not msg.value
                return block.timestamp
            if unknown_0xd33e61f7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(uint8(stor2.field_168))
            if unknown_0xdc067574(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_dc067574
            if unknown_0xe2331eb4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if contractOwner != msg.sender:
                    revert with 0, 'sender is not the owner'
                call address(cd[4]) with:
                   value cd[36] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xfd7b8b45(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if stor0 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if contractOwner != msg.sender:
                        revert with 0, 'sender is not the owner'
                    stor1[address(cd[4])] = uint8(bool(cd[36]))
                    stor0 = 1
        if unknown_0x86468c42(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5a63fbc9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return contractOwner
            if unknown_0x5d03704c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if stor0 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if sub_00b4fa3e[cd[4]].field_256 != msg.sender:
                    revert with 0, 'The msg.sender has to be the seller'
                if not sub_00b4fa3e[cd[4]].field_2560:
                    revert with 0, 'Option is not valid'
                if sub_00b4fa3e[cd[4]].field_512 != this.address:
                    if sub_00b4fa3e[cd[4]].field_1536 > !sub_dc067574:
                        revert with 0, 17
                    if 24 * 3600 > !(sub_00b4fa3e[cd[4]].field_1536 + sub_dc067574):
                        revert with 0, 17
                    if block.timestamp <= sub_00b4fa3e[cd[4]].field_1536 + sub_dc067574 + (24 * 3600):
                        stor0 = 1
                        return 0
                if not sub_00b4fa3e[cd[4]].field_928:
                    call sub_00b4fa3e[cd[4]].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_1792
                else:
                    call sub_167d093bAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_00b4fa3e[cd[4]].field_2560 = 0
                stor0 = 1
                return 1
            if unknown_0x681f7aaa(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 288
                require cd[4] == address(cd[4])
                require cd[68] == bool(cd[68])
                require cd[100] == bool(cd[100])
                require cd[132] == bool(cd[132])
                require cd[196] == bool(cd[196])
                require cd[260] == bool(cd[260])
                if stor0 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if contractOwner != msg.sender:
                    revert with 0, 'sender is not the owner'
                fee = cd[36]
                sub_9e10ec01 = cd[164]
                uint8(stor2.field_0) = uint8(bool(cd[196]))
                Mask(248, 0, stor2.field_8) = contractOwner
                uint8(stor2.field_168) = uint8(bool(cd[100]))
                Mask(80, 0, stor2.field_176) = Mask(80, 0, bool(cd[132]))
                Mask(72, 0, stor2.field_184) = Mask(72, 16, bool(cd[100])) >> 16
                sub_a26f546e = cd[228]
                uint8(stor10.field_0) = uint8(0xffffffffffffffffffff0000000000000000000000000000000000000000ff00 and uint256(stor10.field_0))
                uint8(stor10.field_0) = uint8(bool(cd[68]))
                Mask(248, 0, stor10.field_8) = Mask(248, 0, bool(cd[260]))
                Mask(240, 0, stor10.field_16) = Mask(240, 16, 0xffffffffffffffffffff0000000000000000000000000000000000000000ff00 and uint256(stor10.field_0)) >> 16
                address(stor10.field_16) = address(cd[4])
                Mask(240, 0, stor10.field_16) = Mask(240, 16, bool(cd[68])) >> 16
                stor0 = 1
        if unknown_0x86468c42(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                revert with 0, 65
            require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
            s = 160
            idx = cd[4] + 36
            while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if stor0 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if contractOwner != msg.sender:
                revert with 0, 'sender is not the owner'
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 160]
                mem[32] = 12
                sub_00b4fa3e[mem[(32 * idx) + 160]].field_2560 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0x8c803f91(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + ('cd', 68).length + 36 <= calldata.size
                if stor0 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not cd[36]:
                    revert with 0, '_Premium >0'
                if sub_00b4fa3e[cd[4]].field_512 != msg.sender:
                    revert with 0, 'You are not the owner of this Purchased option.'
                sub_00b4fa3e[cd[4]].field_1280 = cd[36]
                if sha3(call.data[cd[68] + 36 len ('cd', 68).length]) != sha3(439721161573):
                    sub_00b4fa3e[cd[4]].field_2568 = 1
                else:
                    sub_00b4fa3e[cd[4]].field_2568 = 0
                stor0 = 1
            if uint32(call.func_hash) >> 224 != unknown_0x9746bb7e(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x9e10ec01(?????):
                require not msg.value
                return sub_9e10ec01
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[36] == address(cd[36])
            if stor0 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if block.timestamp >= sub_00b4fa3e[cd[4]].field_1536:
                revert with 0, 'This option expired'
            if cd[68] > sub_9e10ec01:
                revert with 0, 'solo fee too high.'
            if msg.sender == sub_00b4fa3e[cd[4]].field_256:
                revert with 0, 'Can't buy your own Option.'
            if bool(sub_00b4fa3e[cd[4]].field_2560) != 1:
                revert with 0, 'This option is no longer valid'
            call address(stor10.field_16).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_00b4fa3e[cd[4]].field_256, sub_00b4fa3e[cd[4]].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Please ensure that you have approved this contract to handle your DAI (error)'
            if uint8(stor10.field_0):
                call address(stor10.field_16).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(stor2.field_0), fee
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Transfer Fee error..'
            if uint8(stor2.field_176):
                call address(stor10.field_16).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(cd[36]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Transfer solo Fee error..'
            sub_00b4fa3e[cd[4]].field_512 = msg.sender or Mask(96, 160, sub_00b4fa3e[cd[4]].field_512)
            emit 0x721702d7: cd[4], msg.sender, sub_00b4fa3e[cd[4]].field_1280
        stor0 = 1
        return 1
    if unknown_0x22ddf5d2(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x2f3f7d7f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x2f3f7d7f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor1[cd[4]])
            if uint32(call.func_hash) >> 224 != unknown_0x33338977(?????):
                if unknown_0x3966c4a0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3966c4a0
                if uint32(call.func_hash) >> 224 != unknown_0x5662ecc7(?????):
                require not msg.value
                return sub_5662ecc7
            require not msg.value
            if sub_5662ecc7 > test266151307():
                revert with 0, 65
            mem[128] = sub_5662ecc7
            mem[64] = (32 * sub_5662ecc7) + 160
            if not sub_5662ecc7:
                idx = 0
                while idx < sub_5662ecc7:
                    mem[0] = idx
                    mem[32] = 12
                    _858 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_858] = sub_00b4fa3e[idx].field_0
                    mem[_858 + 32] = sub_00b4fa3e[idx].field_256
                    mem[_858 + 64] = sub_00b4fa3e[idx].field_512
                    mem[_858 + 96] = sub_00b4fa3e[idx].field_768
                    mem[_858 + 128] = bool(sub_00b4fa3e[idx].field_928)
                    mem[_858 + 160] = sub_00b4fa3e[idx].field_1024
                    mem[_858 + 192] = sub_00b4fa3e[idx].field_1280
                    mem[_858 + 224] = sub_00b4fa3e[idx].field_1536
                    mem[_858 + 256] = sub_00b4fa3e[idx].field_1792
                    mem[_858 + 288] = sub_00b4fa3e[idx].field_2048
                    mem[_858 + 320] = sub_00b4fa3e[idx].field_2304
                    mem[_858 + 352] = bool(sub_00b4fa3e[idx].field_2560)
                    mem[_858 + 384] = bool(sub_00b4fa3e[idx].field_2568)
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _858
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _861 = mem[64]
                mem[mem[64]] = 32
                _862 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _862:
                    _1042 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1042 + 44 len 20]
                    mem[t + 64] = mem[_1042 + 76 len 20]
                    mem[t + 96] = mem[_1042 + 108 len 20]
                    mem[t + 128] = bool(mem[_1042 + 128])
                    mem[t + 160] = mem[_1042 + 160]
                    mem[t + 192] = mem[_1042 + 192]
                    mem[t + 224] = mem[_1042 + 224]
                    mem[t + 256] = mem[_1042 + 256]
                    mem[t + 288] = mem[_1042 + 288]
                    mem[t + 320] = mem[_1042 + 320]
                    mem[t + 352] = bool(mem[_1042 + 352])
                    mem[t + 384] = bool(mem[_1042 + 384])
                    idx = idx + 1
                    s = s + 32
                    t = t + 416
                    continue 
                return memory
                  from mem[64]
                   len _861 + (416 * _862) + -mem[64] + 64
            mem[64] = (32 * sub_5662ecc7) + 576
            mem[(32 * sub_5662ecc7) + 160] = 0
            mem[(32 * sub_5662ecc7) + 192] = 0
            mem[(32 * sub_5662ecc7) + 224] = 0
            mem[(32 * sub_5662ecc7) + 256] = 0
            mem[(32 * sub_5662ecc7) + 288] = 0
            mem[(32 * sub_5662ecc7) + 320] = 0
            mem[(32 * sub_5662ecc7) + 352] = 0
            mem[(32 * sub_5662ecc7) + 384] = 0
            mem[(32 * sub_5662ecc7) + 416] = 0
            mem[(32 * sub_5662ecc7) + 448] = 0
            mem[(32 * sub_5662ecc7) + 480] = 0
            mem[(32 * sub_5662ecc7) + 512] = 0
            mem[(32 * sub_5662ecc7) + 544] = 0
            mem[var15001] = (32 * sub_5662ecc7) + 160
            s = var15001
            idx = var15002
            while idx - 1:
                mem[64] = mem[64] + 416
                mem[(32 * sub_5662ecc7) + 160] = 0
                mem[(32 * sub_5662ecc7) + 192] = 0
                mem[(32 * sub_5662ecc7) + 224] = 0
                mem[(32 * sub_5662ecc7) + 256] = 0
                mem[(32 * sub_5662ecc7) + 288] = 0
                mem[(32 * sub_5662ecc7) + 320] = 0
                mem[(32 * sub_5662ecc7) + 352] = 0
                mem[(32 * sub_5662ecc7) + 384] = 0
                mem[(32 * sub_5662ecc7) + 416] = 0
                mem[(32 * sub_5662ecc7) + 448] = 0
                mem[(32 * sub_5662ecc7) + 480] = 0
                mem[(32 * sub_5662ecc7) + 512] = 0
                mem[(32 * sub_5662ecc7) + 544] = 0
                mem[s + 32] = (32 * sub_5662ecc7) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_5662ecc7:
                mem[0] = idx
                mem[32] = 12
                _1139 = mem[64]
                mem[64] = mem[64] + 416
                mem[_1139] = sub_00b4fa3e[idx].field_0
                mem[_1139 + 32] = sub_00b4fa3e[idx].field_256
                mem[_1139 + 64] = sub_00b4fa3e[idx].field_512
                mem[_1139 + 96] = sub_00b4fa3e[idx].field_768
                mem[_1139 + 128] = bool(sub_00b4fa3e[idx].field_928)
                mem[_1139 + 160] = sub_00b4fa3e[idx].field_1024
                mem[_1139 + 192] = sub_00b4fa3e[idx].field_1280
                mem[_1139 + 224] = sub_00b4fa3e[idx].field_1536
                mem[_1139 + 256] = sub_00b4fa3e[idx].field_1792
                mem[_1139 + 288] = sub_00b4fa3e[idx].field_2048
                mem[_1139 + 320] = sub_00b4fa3e[idx].field_2304
                mem[_1139 + 352] = bool(sub_00b4fa3e[idx].field_2560)
                mem[_1139 + 384] = bool(sub_00b4fa3e[idx].field_2568)
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _1139
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1144 = mem[64]
            mem[mem[64]] = 32
            _1146 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + 64
            while idx < _1146:
                _1203 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1203 + 44 len 20]
                mem[t + 64] = mem[_1203 + 76 len 20]
                mem[t + 96] = mem[_1203 + 108 len 20]
                mem[t + 128] = bool(mem[_1203 + 128])
                mem[t + 160] = mem[_1203 + 160]
                mem[t + 192] = mem[_1203 + 192]
                mem[t + 224] = mem[_1203 + 224]
                mem[t + 256] = mem[_1203 + 256]
                mem[t + 288] = mem[_1203 + 288]
                mem[t + 320] = mem[_1203 + 320]
                mem[t + 352] = bool(mem[_1203 + 352])
                mem[t + 384] = bool(mem[_1203 + 384])
                idx = idx + 1
                s = s + 32
                t = t + 416
                continue 
            return memory
              from mem[64]
               len _1144 + (416 * _1146) + -mem[64] + 64
        if unknown_0x22ddf5d2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_22ddf5d2
        if uint32(call.func_hash) >> 224 != unknown_0x23cfbf1a(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x2c8a832d(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            staticcall address(cd[4]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return ext_call.return_data[31 len 1]
        require not msg.value
        require calldata.size - 4 >= 32
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        if sub_00b4fa3e[cd[4]].field_512 != msg.sender:
            revert with 0, 'you are Not Purchaser.'
        if bool(sub_00b4fa3e[cd[4]].field_2560) != 1:
            revert with 0, 'This option has already been excersized'
        if block.timestamp < sub_00b4fa3e[cd[4]].field_1536:
            revert with 0, 'This option has not reached its excersize timestamp yet'
        if sub_00b4fa3e[cd[4]].field_1536 > !sub_dc067574:
            revert with 0, 17
        if block.timestamp > sub_00b4fa3e[cd[4]].field_1536 + sub_dc067574:
            revert with 0, 'Its too late to exersize your option'
        staticcall sub_00b4fa3e[cd[4]].field_768.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, '0 decimal is not allowed.'
        if not sub_00b4fa3e[cd[4]].field_928:
            if not ext_call.return_data[31 len 1]:
                if sub_00b4fa3e[cd[4]].field_1792 and sub_00b4fa3e[cd[4]].field_1024 > -1 / sub_00b4fa3e[cd[4]].field_1792:
                    revert with 0, 17
                if sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 <= 0:
                    revert with 0, 'you have not enough token send to Writer.'
                call sub_167d093bAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[cd[4]].field_256, sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[cd[4]].field_2560 = 0
                call sub_00b4fa3e[cd[4]].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: cd[4], sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024, block.timestamp
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if sub_00b4fa3e[cd[4]].field_1792 and sub_00b4fa3e[cd[4]].field_1024 > -1 / sub_00b4fa3e[cd[4]].field_1792:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / 10^ext_call.return_data[31 len 1] <= 0:
                        revert with 0, 'you have not enough token send to Writer.'
                    call sub_167d093bAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_256, sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / 10^uint8(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                    sub_00b4fa3e[cd[4]].field_2560 = 0
                    call sub_00b4fa3e[cd[4]].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x5fd7d800: cd[4], sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / 10^uint8(ext_call.return_data[0]), block.timestamp
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if sub_00b4fa3e[cd[4]].field_1792 and sub_00b4fa3e[cd[4]].field_1024 > -1 / sub_00b4fa3e[cd[4]].field_1792:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / s * t <= 0:
                        revert with 0, 'you have not enough token send to Writer.'
                    call sub_167d093bAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_256, sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                    sub_00b4fa3e[cd[4]].field_2560 = 0
                    call sub_00b4fa3e[cd[4]].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x5fd7d800: cd[4], sub_00b4fa3e[cd[4]].field_1792 * sub_00b4fa3e[cd[4]].field_1024 / s * t, block.timestamp
        else:
            if not sub_00b4fa3e[cd[4]].field_1024:
                revert with 0, 18
            if not ext_call.return_data[31 len 1]:
                if sub_00b4fa3e[cd[4]].field_1792 and 1 > -1 / sub_00b4fa3e[cd[4]].field_1792:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 and sub_00b4fa3e[cd[4]].field_1792 > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024:
                    revert with 0, 17
                if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 / 1000000000000 * 10^18 <= 0:
                    revert with 0, 'have not enough dai send to Writer.'
                call sub_00b4fa3e[cd[4]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_00b4fa3e[cd[4]].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 / 1000000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                sub_00b4fa3e[cd[4]].field_2560 = 0
                call sub_167d093bAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fd7d800: cd[4], 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 / 1000000000000 * 10^18, block.timestamp
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if sub_00b4fa3e[cd[4]].field_1792 and 10^ext_call.return_data[31 len 1] > -1 / sub_00b4fa3e[cd[4]].field_1792:
                        revert with 0, 17
                    if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 and sub_00b4fa3e[cd[4]].field_1792 * 10^ext_call.return_data[31 len 1] > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024:
                        revert with 0, 17
                    if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * 10^ext_call.return_data[31 len 1] / 1000000000000 * 10^18 <= 0:
                        revert with 0, 'have not enough dai send to Writer.'
                    call sub_00b4fa3e[cd[4]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * 10^uint8(ext_call.return_data[0]) / 1000000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                    sub_00b4fa3e[cd[4]].field_2560 = 0
                    call sub_167d093bAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x5fd7d800: cd[4], 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * 10^uint8(ext_call.return_data[0]) / 1000000000000 * 10^18, block.timestamp
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if sub_00b4fa3e[cd[4]].field_1792 and s * t > -1 / sub_00b4fa3e[cd[4]].field_1792:
                        revert with 0, 17
                    if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 and sub_00b4fa3e[cd[4]].field_1792 * s * t > -1 / 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024:
                        revert with 0, 17
                    if 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * s * t / 1000000000000 * 10^18 <= 0:
                        revert with 0, 'have not enough dai send to Writer.'
                    call sub_00b4fa3e[cd[4]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_00b4fa3e[cd[4]].field_256, 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * s * t / 1000000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Did the buyer approve this contract to handle DAI or have anough DAI to excersize?'
                    sub_00b4fa3e[cd[4]].field_2560 = 0
                    call sub_167d093bAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_00b4fa3e[cd[4]].field_512, sub_00b4fa3e[cd[4]].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x5fd7d800: cd[4], 1000000000000 * 10^18 / sub_00b4fa3e[cd[4]].field_1024 * sub_00b4fa3e[cd[4]].field_1792 * s * t / 1000000000000 * 10^18, block.timestamp
        stor0 = 1
        return 1
    if unknown_0x167d093b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x167d093b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_167d093bAddress
        if unknown_0x194b98d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 128
            if contractOwner != msg.sender:
                revert with 0, 'sender is not the owner'
            if not cd[100]:
                if not cd[36]:
                    revert with 0, 18
                if not cd[68]:
                    if cd[4] and 1 > -1 / cd[4]:
                        revert with 0, 17
                    if 1 / cd[36] and cd[4] > -1 / 1 / cd[36]:
                        revert with 0, 17
                    if 1 / cd[36] * cd[4] <= 0:
                        revert with 0, 'have not enough dai.'
                    if not cd[100]:
                        return (1 / cd[36] * cd[4])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if not 10^cd[100]:
                            revert with 0, 18
                        return (1 / cd[36] * cd[4] / 10^cd[100])
                    s = 10
                    t = 1
                    idx = cd[100]
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
                    return (1 / cd[36] * cd[4] / s * t)
                if bool(bool(cd[68] < 78)) or bool(bool(cd[68] < 32)):
                    if cd[4] and 10^cd[68] > -1 / cd[4]:
                        revert with 0, 17
                    if 1 / cd[36] and cd[4] * 10^cd[68] > -1 / 1 / cd[36]:
                        revert with 0, 17
                    if 1 / cd[36] * cd[4] * 10^cd[68] <= 0:
                        revert with 0, 'have not enough dai.'
                    if not cd[100]:
                        return (1 / cd[36] * cd[4] * 10^cd[68])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if not 10^cd[100]:
                            revert with 0, 18
                        return (1 / cd[36] * cd[4] * 10^cd[68] / 10^cd[100])
                    s = 10
                    t = 1
                    idx = cd[100]
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
                    return (1 / cd[36] * cd[4] * 10^cd[68] / s * t)
                s = 10
                t = 1
                idx = cd[68]
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
                if cd[4] and s * t > -1 / cd[4]:
                    revert with 0, 17
                if 1 / cd[36] and cd[4] * s * t > -1 / 1 / cd[36]:
                    revert with 0, 17
                if 1 / cd[36] * cd[4] * s * t <= 0:
                    revert with 0, 'have not enough dai.'
                if not cd[100]:
                    return (1 / cd[36] * cd[4] * s * t)
                if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                    if not 10^cd[100]:
                        revert with 0, 18
                    return (1 / cd[36] * cd[4] * s * t / 10^cd[100])
                u = 10
                v = 1
                idx = cd[100]
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
                return (1 / cd[36] * cd[4] * s * t / u * v)
            if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                if 10^cd[100] > -1:
                    revert with 0, 17
                if not cd[36]:
                    revert with 0, 18
                if not cd[68]:
                    if cd[4] and 1 > -1 / cd[4]:
                        revert with 0, 17
                    if 10^cd[100] / cd[36] and cd[4] > -1 / 10^cd[100] / cd[36]:
                        revert with 0, 17
                    if 10^cd[100] / cd[36] * cd[4] <= 0:
                        revert with 0, 'have not enough dai.'
                    if not cd[100]:
                        return (10^cd[100] / cd[36] * cd[4])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if not 10^cd[100]:
                            revert with 0, 18
                        return (10^cd[100] / cd[36] * cd[4] / 10^cd[100])
                    s = 10
                    t = 1
                    idx = cd[100]
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
                    return (10^cd[100] / cd[36] * cd[4] / s * t)
                if bool(bool(cd[68] < 78)) or bool(bool(cd[68] < 32)):
                    if cd[4] and 10^cd[68] > -1 / cd[4]:
                        revert with 0, 17
                    if 10^cd[100] / cd[36] and cd[4] * 10^cd[68] > -1 / 10^cd[100] / cd[36]:
                        revert with 0, 17
                    if 10^cd[100] / cd[36] * cd[4] * 10^cd[68] <= 0:
                        revert with 0, 'have not enough dai.'
                    if not cd[100]:
                        return (10^cd[100] / cd[36] * cd[4] * 10^cd[68])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if not 10^cd[100]:
                            revert with 0, 18
                        return (10^cd[100] / cd[36] * cd[4] * 10^cd[68] / 10^cd[100])
                    s = 10
                    t = 1
                    idx = cd[100]
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
                    return (10^cd[100] / cd[36] * cd[4] * 10^cd[68] / s * t)
                s = 10
                t = 1
                idx = cd[68]
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
                if cd[4] and s * t > -1 / cd[4]:
                    revert with 0, 17
                if 10^cd[100] / cd[36] and cd[4] * s * t > -1 / 10^cd[100] / cd[36]:
                    revert with 0, 17
                if 10^cd[100] / cd[36] * cd[4] * s * t <= 0:
                    revert with 0, 'have not enough dai.'
                if not cd[100]:
                    return (10^cd[100] / cd[36] * cd[4] * s * t)
                if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                    if not 10^cd[100]:
                        revert with 0, 18
                    return (10^cd[100] / cd[36] * cd[4] * s * t / 10^cd[100])
                u = 10
                v = 1
                idx = cd[100]
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
                return (10^cd[100] / cd[36] * cd[4] * s * t / u * v)
            s = 10
            t = 1
            idx = cd[100]
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
            if s * t > -1:
                revert with 0, 17
            if not cd[36]:
                revert with 0, 18
            if not cd[68]:
                if cd[4] and 1 > -1 / cd[4]:
                    revert with 0, 17
                if s * t / cd[36] and cd[4] > -1 / s * t / cd[36]:
                    revert with 0, 17
                if s * t / cd[36] * cd[4] <= 0:
                    revert with 0, 'have not enough dai.'
                if not cd[100]:
                    return (s * t / cd[36] * cd[4])
                if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                    if not 10^cd[100]:
                        revert with 0, 18
                    return (s * t / cd[36] * cd[4] / 10^cd[100])
                u = 10
                v = 1
                idx = cd[100]
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
                return (s * t / cd[36] * cd[4] / u * v)
            if bool(bool(cd[68] < 78)) or bool(bool(cd[68] < 32)):
                if cd[4] and 10^cd[68] > -1 / cd[4]:
                    revert with 0, 17
                if s * t / cd[36] and cd[4] * 10^cd[68] > -1 / s * t / cd[36]:
                    revert with 0, 17
                if s * t / cd[36] * cd[4] * 10^cd[68] <= 0:
                    revert with 0, 'have not enough dai.'
                if not cd[100]:
                    return (s * t / cd[36] * cd[4] * 10^cd[68])
                if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                    if not 10^cd[100]:
                        revert with 0, 18
                    return (s * t / cd[36] * cd[4] * 10^cd[68] / 10^cd[100])
                u = 10
                v = 1
                idx = cd[100]
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
                return (s * t / cd[36] * cd[4] * 10^cd[68] / u * v)
            u = 10
            v = 1
            idx = cd[68]
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
            if cd[4] and u * v > -1 / cd[4]:
                revert with 0, 17
            if s * t / cd[36] and cd[4] * u * v > -1 / s * t / cd[36]:
                revert with 0, 17
            if s * t / cd[36] * cd[4] * u * v <= 0:
                revert with 0, 'have not enough dai.'
            if not cd[100]:
                return (s * t / cd[36] * cd[4] * u * v)
            if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                if not 10^cd[100]:
                    revert with 0, 18
                return (s * t / cd[36] * cd[4] * u * v / 10^cd[100])
            w = 10
            x = 1
            idx = cd[100]
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            return (s * t / cd[36] * cd[4] * u * v / w * x)
        if unknown_0x1ba1640f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if contractOwner != msg.sender:
                revert with 0, 'sender is not the owner'
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if uint32(call.func_hash) >> 224 != unknown_0x1ead5ea8(?????):
        require not msg.value
        require calldata.size - 4 >= 32
        if cd[4] > test266151307():
            revert with 0, 65
        mem[128] = cd[4]
        mem[64] = (32 * cd[4]) + 160
        if not cd[4]:
            if sub_5662ecc7 >= 1:
                if sub_5662ecc7 >= cd[4]:
                    if var38002 < sub_5662ecc7 - cd[4]:
                        mem[(32 * cd[4]) + 160] = 32
                        mem[(32 * cd[4]) + 192] = cd[4]
                        idx = 0
                        s = 160
                        t = (32 * cd[4]) + 224
                        while idx < mem[128]:
                            _1275 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_1275 + 44 len 20]
                            mem[t + 64] = mem[_1275 + 76 len 20]
                            mem[t + 96] = mem[_1275 + 108 len 20]
                            mem[t + 128] = bool(mem[_1275 + 128])
                            mem[t + 160] = mem[_1275 + 160]
                            mem[t + 192] = mem[_1275 + 192]
                            mem[t + 224] = mem[_1275 + 224]
                            mem[t + 256] = mem[_1275 + 256]
                            mem[t + 288] = mem[_1275 + 288]
                            mem[t + 320] = mem[_1275 + 320]
                            mem[t + 352] = bool(mem[_1275 + 352])
                            mem[t + 384] = bool(mem[_1275 + 384])
                            idx = idx + 1
                            s = s + 32
                            t = t + 416
                            continue 
                        return memory
                          from mem[64]
                           len (449 * cd[4]) + -mem[64] + 224
                    mem[0] = var40001
                    mem[32] = 12
                    mem[64] = (32 * cd[4]) + 576
                    mem[(32 * cd[4]) + 160] = sub_00b4fa3e[var40001].field_0
                    mem[(32 * cd[4]) + 192] = sub_00b4fa3e[var40001].field_256
                    mem[(32 * cd[4]) + 224] = sub_00b4fa3e[var40001].field_512
                    mem[(32 * cd[4]) + 256] = sub_00b4fa3e[var40001].field_768
                    mem[(32 * cd[4]) + 288] = bool(sub_00b4fa3e[var40001].field_928)
                    mem[(32 * cd[4]) + 320] = sub_00b4fa3e[var40001].field_1024
                    mem[(32 * cd[4]) + 352] = sub_00b4fa3e[var40001].field_1280
                    mem[(32 * cd[4]) + 384] = sub_00b4fa3e[var40001].field_1536
                    mem[(32 * cd[4]) + 416] = sub_00b4fa3e[var40001].field_1792
                    mem[(32 * cd[4]) + 448] = sub_00b4fa3e[var40001].field_2048
                    mem[(32 * cd[4]) + 480] = sub_00b4fa3e[var40001].field_2304
                    mem[(32 * cd[4]) + 512] = bool(sub_00b4fa3e[var40001].field_2560)
                    mem[(32 * cd[4]) + 544] = bool(sub_00b4fa3e[var40001].field_2568)
                    if var40002 >= cd[4]:
                        revert with 0, 50
                    mem[(32 * var40002) + 160] = (32 * cd[4]) + 160
                    s = var40002
                    t = (32 * cd[4]) + 160
                    u = 0
                    u = var40001
                    idx = var40002
                    while idx != -1:
                        if not u:
                            revert with 0, 17
                        if sub_5662ecc7 < cd[4]:
                            revert with 0, 17
                        if u - 1 < sub_5662ecc7 - cd[4]:
                            _1353 = mem[64]
                            mem[mem[64]] = 32
                            _1354 = mem[128]
                            mem[mem[64] + 32] = mem[128]
                            idx = 0
                            u = 160
                            v = mem[64] + 64
                            while idx < _1354:
                                _1390 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_1390 + 44 len 20]
                                mem[v + 64] = mem[_1390 + 76 len 20]
                                mem[v + 96] = mem[_1390 + 108 len 20]
                                mem[v + 128] = bool(mem[_1390 + 128])
                                mem[v + 160] = mem[_1390 + 160]
                                mem[v + 192] = mem[_1390 + 192]
                                mem[v + 224] = mem[_1390 + 224]
                                mem[v + 256] = mem[_1390 + 256]
                                mem[v + 288] = mem[_1390 + 288]
                                mem[v + 320] = mem[_1390 + 320]
                                mem[v + 352] = bool(mem[_1390 + 352])
                                mem[v + 384] = bool(mem[_1390 + 384])
                                mem[(32 * s) + 160] = t
                                idx = idx + 1
                                u = u + 32
                                v = v + 416
                                continue 
                            return memory
                              from mem[64]
                               len _1353 + (416 * _1354) + -mem[64] + 64
                        mem[0] = u - 1
                        mem[32] = 12
                        _1351 = mem[64]
                        mem[64] = mem[64] + 416
                        mem[_1351] = sub_00b4fa3e[u - 1].field_0
                        mem[_1351 + 32] = sub_00b4fa3e[u - 1].field_256
                        mem[_1351 + 64] = sub_00b4fa3e[u - 1].field_512
                        mem[_1351 + 96] = sub_00b4fa3e[u - 1].field_768
                        mem[_1351 + 128] = bool(sub_00b4fa3e[u - 1].field_928)
                        mem[_1351 + 160] = sub_00b4fa3e[u - 1].field_1024
                        mem[_1351 + 192] = sub_00b4fa3e[u - 1].field_1280
                        mem[_1351 + 224] = sub_00b4fa3e[u - 1].field_1536
                        mem[_1351 + 256] = sub_00b4fa3e[u - 1].field_1792
                        mem[_1351 + 288] = sub_00b4fa3e[u - 1].field_2048
                        mem[_1351 + 320] = sub_00b4fa3e[u - 1].field_2304
                        mem[_1351 + 352] = bool(sub_00b4fa3e[u - 1].field_2560)
                        mem[_1351 + 384] = bool(sub_00b4fa3e[u - 1].field_2568)
                        if idx + 1 >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx + 2) + 160] = _1351
                        s = idx + 1
                        t = _1351
                        u = sha3(u - 1, 12)
                        u = u - 1
                        idx = idx + 1
                        continue 
        else:
            mem[64] = (32 * cd[4]) + 576
            mem[(32 * cd[4]) + 160] = 0
            mem[(32 * cd[4]) + 192] = 0
            mem[(32 * cd[4]) + 224] = 0
            mem[(32 * cd[4]) + 256] = 0
            mem[(32 * cd[4]) + 288] = 0
            mem[(32 * cd[4]) + 320] = 0
            mem[(32 * cd[4]) + 352] = 0
            mem[(32 * cd[4]) + 384] = 0
            mem[(32 * cd[4]) + 416] = 0
            mem[(32 * cd[4]) + 448] = 0
            mem[(32 * cd[4]) + 480] = 0
            mem[(32 * cd[4]) + 512] = 0
            mem[(32 * cd[4]) + 544] = 0
            mem[var20001] = (32 * cd[4]) + 160
            s = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 416
                mem[(32 * cd[4]) + 160] = 0
                mem[(32 * cd[4]) + 192] = 0
                mem[(32 * cd[4]) + 224] = 0
                mem[(32 * cd[4]) + 256] = 0
                mem[(32 * cd[4]) + 288] = 0
                mem[(32 * cd[4]) + 320] = 0
                mem[(32 * cd[4]) + 352] = 0
                mem[(32 * cd[4]) + 384] = 0
                mem[(32 * cd[4]) + 416] = 0
                mem[(32 * cd[4]) + 448] = 0
                mem[(32 * cd[4]) + 480] = 0
                mem[(32 * cd[4]) + 512] = 0
                mem[(32 * cd[4]) + 544] = 0
                mem[s + 32] = (32 * cd[4]) + 160
                s = s + 32
                idx = idx - 1
                continue 
            if sub_5662ecc7 >= 1:
                if sub_5662ecc7 >= cd[4]:
                    if var45002 < sub_5662ecc7 - cd[4]:
                        _1333 = mem[64]
                        mem[mem[64]] = 32
                        _1334 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = 160
                        t = mem[64] + 64
                        while idx < _1334:
                            _1404 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_1404 + 44 len 20]
                            mem[t + 64] = mem[_1404 + 76 len 20]
                            mem[t + 96] = mem[_1404 + 108 len 20]
                            mem[t + 128] = bool(mem[_1404 + 128])
                            mem[t + 160] = mem[_1404 + 160]
                            mem[t + 192] = mem[_1404 + 192]
                            mem[t + 224] = mem[_1404 + 224]
                            mem[t + 256] = mem[_1404 + 256]
                            mem[t + 288] = mem[_1404 + 288]
                            mem[t + 320] = mem[_1404 + 320]
                            mem[t + 352] = bool(mem[_1404 + 352])
                            mem[t + 384] = bool(mem[_1404 + 384])
                            idx = idx + 1
                            s = s + 32
                            t = t + 416
                            continue 
                        return memory
                          from mem[64]
                           len _1333 + (416 * _1334) + -mem[64] + 64
                    mem[0] = var47001
                    mem[32] = 12
                    _1388 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_1388] = sub_00b4fa3e[var47001].field_0
                    mem[_1388 + 32] = sub_00b4fa3e[var47001].field_256
                    mem[_1388 + 64] = sub_00b4fa3e[var47001].field_512
                    mem[_1388 + 96] = sub_00b4fa3e[var47001].field_768
                    mem[_1388 + 128] = bool(sub_00b4fa3e[var47001].field_928)
                    mem[_1388 + 160] = sub_00b4fa3e[var47001].field_1024
                    mem[_1388 + 192] = sub_00b4fa3e[var47001].field_1280
                    mem[_1388 + 224] = sub_00b4fa3e[var47001].field_1536
                    mem[_1388 + 256] = sub_00b4fa3e[var47001].field_1792
                    mem[_1388 + 288] = sub_00b4fa3e[var47001].field_2048
                    mem[_1388 + 320] = sub_00b4fa3e[var47001].field_2304
                    mem[_1388 + 352] = bool(sub_00b4fa3e[var47001].field_2560)
                    mem[_1388 + 384] = bool(sub_00b4fa3e[var47001].field_2568)
                    if var47002 >= mem[128]:
                        revert with 0, 50
                    mem[(32 * var47002) + 160] = _1388
                    s = var47002
                    t = _1388
                    u = 0
                    u = var47001
                    idx = var47002
                    while idx != -1:
                        if not u:
                            revert with 0, 17
                        if sub_5662ecc7 < cd[4]:
                            revert with 0, 17
                        if u - 1 < sub_5662ecc7 - cd[4]:
                            _1443 = mem[64]
                            mem[mem[64]] = 32
                            _1444 = mem[128]
                            mem[mem[64] + 32] = mem[128]
                            idx = 0
                            u = 160
                            v = mem[64] + 64
                            while idx < _1444:
                                _1460 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_1460 + 44 len 20]
                                mem[v + 64] = mem[_1460 + 76 len 20]
                                mem[v + 96] = mem[_1460 + 108 len 20]
                                mem[v + 128] = bool(mem[_1460 + 128])
                                mem[v + 160] = mem[_1460 + 160]
                                mem[v + 192] = mem[_1460 + 192]
                                mem[v + 224] = mem[_1460 + 224]
                                mem[v + 256] = mem[_1460 + 256]
                                mem[v + 288] = mem[_1460 + 288]
                                mem[v + 320] = mem[_1460 + 320]
                                mem[v + 352] = bool(mem[_1460 + 352])
                                mem[v + 384] = bool(mem[_1460 + 384])
                                mem[(32 * s) + 160] = t
                                idx = idx + 1
                                u = u + 32
                                v = v + 416
                                continue 
                            return memory
                              from mem[64]
                               len _1443 + (416 * _1444) + -mem[64] + 64
                        mem[0] = u - 1
                        mem[32] = 12
                        _1441 = mem[64]
                        mem[64] = mem[64] + 416
                        mem[_1441] = sub_00b4fa3e[u - 1].field_0
                        mem[_1441 + 32] = sub_00b4fa3e[u - 1].field_256
                        mem[_1441 + 64] = sub_00b4fa3e[u - 1].field_512
                        mem[_1441 + 96] = sub_00b4fa3e[u - 1].field_768
                        mem[_1441 + 128] = bool(sub_00b4fa3e[u - 1].field_928)
                        mem[_1441 + 160] = sub_00b4fa3e[u - 1].field_1024
                        mem[_1441 + 192] = sub_00b4fa3e[u - 1].field_1280
                        mem[_1441 + 224] = sub_00b4fa3e[u - 1].field_1536
                        mem[_1441 + 256] = sub_00b4fa3e[u - 1].field_1792
                        mem[_1441 + 288] = sub_00b4fa3e[u - 1].field_2048
                        mem[_1441 + 320] = sub_00b4fa3e[u - 1].field_2304
                        mem[_1441 + 352] = bool(sub_00b4fa3e[u - 1].field_2560)
                        mem[_1441 + 384] = bool(sub_00b4fa3e[u - 1].field_2568)
                        if idx + 1 >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx + 2) + 160] = _1441
                        s = idx + 1
                        t = _1441
                        u = sha3(u - 1, 12)
                        u = u - 1
                        idx = idx + 1
                        continue 
        revert with 0, 17
    if unknown_0x00b4fa3e(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        return sub_00b4fa3e[cd[4]].field_0, 
               sub_00b4fa3e[cd[4]].field_256,
               sub_00b4fa3e[cd[4]].field_512,
               sub_00b4fa3e[cd[4]].field_768,
               bool(sub_00b4fa3e[cd[4]].field_928),
               sub_00b4fa3e[cd[4]].field_1024,
               sub_00b4fa3e[cd[4]].field_1280,
               sub_00b4fa3e[cd[4]].field_1536,
               sub_00b4fa3e[cd[4]].field_1792,
               sub_00b4fa3e[cd[4]].field_2048,
               sub_00b4fa3e[cd[4]].field_2304,
               bool(sub_00b4fa3e[cd[4]].field_2560),
               bool(sub_00b4fa3e[cd[4]].field_2568)
    if uint32(call.func_hash) >> 224 != unknown_0x00ea5b9b(?????):
        if uint32(call.func_hash) >> 224 != unknown_0x02b2fcc5(?????):
        require not msg.value
        return bool(uint8(stor2.field_0))
    require not msg.value
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == bool(cd[36])
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor2.field_168):
        revert with 0, 'not allow write option rightnow'
    if cd[68] <= 0:
        revert with 0, 'must > 0'
    if cd[100] <= 0:
        revert with 0, 'must > 0'
    if cd[164] <= 0:
        revert with 0, 'must > 0'
    if cd[132] <= sub_a26f546e:
        revert with 0, 'expire time too short.'
    if sub_167d093bAddress == address(cd[4]):
        revert with 0, 'This coin is BaseCoin,input other coin please.'
    if uint8(stor2.field_0):
        if not stor1[address(cd[4])]:
            revert with 0, 'This token is not allow'
    if uint8(stor10.field_8):
        call address(stor10.field_16).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor2.field_0), fee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer Write option Fee error..'
    if cd[36]:
        staticcall sub_167d093bAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, '0 decimals not allowed'
        staticcall sub_167d093bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call sub_167d093bAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall sub_167d093bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !cd[164]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] + cd[164]:
            revert with 0, 'Could not transfer the amount from msg.sender that was requested'
        if cd[132] > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * cd[132]):
            revert with 0, 17
        sub_00b4fa3e[stor11].field_0 = sub_5662ecc7
        sub_00b4fa3e[stor11].field_256 = msg.sender
        sub_00b4fa3e[stor11].field_512 = this.address
        sub_00b4fa3e[stor11].field_768 = address(cd[4])
        sub_00b4fa3e[stor11].field_928 = Mask(96, 0, bool(cd[36]))
        sub_00b4fa3e[stor11].field_1024 = cd[68]
        sub_00b4fa3e[stor11].field_1280 = cd[100]
        sub_00b4fa3e[stor11].field_1536 = block.timestamp + (24 * 3600 * cd[132])
        sub_00b4fa3e[stor11].field_1792 = cd[164]
        sub_00b4fa3e[stor11].field_2048 = sub_22ddf5d2
    else:
        staticcall address(cd[4]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall address(cd[4]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, '0 decimals not allowed'
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !cd[164]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] + cd[164]:
            revert with 0, 'Could not transfer the amount from msg.sender that was requested'
        if cd[132] > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * cd[132]):
            revert with 0, 17
        sub_00b4fa3e[stor11].field_0 = sub_5662ecc7
        sub_00b4fa3e[stor11].field_256 = msg.sender
        sub_00b4fa3e[stor11].field_512 = this.address
        sub_00b4fa3e[stor11].field_768 = address(cd[4])
        sub_00b4fa3e[stor11].field_928 = Mask(96, 0, bool(cd[36]))
        sub_00b4fa3e[stor11].field_1024 = cd[68]
        sub_00b4fa3e[stor11].field_1280 = cd[100]
        sub_00b4fa3e[stor11].field_1536 = block.timestamp + (24 * 3600 * cd[132])
        sub_00b4fa3e[stor11].field_1792 = cd[164]
        sub_00b4fa3e[stor11].field_2048 = uint8(ext_call.return_data[0])
        sub_00b4fa3e[stor11].field_2056 = 0
    sub_00b4fa3e[stor11].field_2304 = block.timestamp
    sub_00b4fa3e[stor11].field_2560 = 1
    sub_00b4fa3e[stor11].field_2568 = 1
    if sub_5662ecc7 > -2:
        revert with 0, 17
    sub_5662ecc7++
    stor0 = 1
    return (sub_5662ecc7 + 1)
}



}
