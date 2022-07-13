contract main {




// =====================  Runtime code  =====================


#
#  - sub_19e77383(?)
#  - sub_21465739(?)
#  - sub_39c6e45d(?)
#  - sub_45a4058d(?)
#  - sub_6b62da40(?)
#  - sub_fde2832f(?)
#  - _fallback()
#
const sub_3de1b3e0(?) = 8

const sub_f1a640f8(?) = 8

const UNIT = 100 * 10^6


address owner;
address routerAddress;
uint32 stor2;
address treasuryAddress;
uint256 stor2;
address oracleAddress;
uint256 nextPositionId;
uint256 sub_a36dbdd2;
mapping of struct product;
mapping of struct sub_5ce89305;
mapping of struct sub_f8438203;
mapping of uint256 stor9;
mapping of uint256 stor10;

function getProduct(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return product[arg1].field_0, product[arg1].field_0, product[arg1].field_0, product[arg1].field_0, product[arg1].field_256
}

function sub_5ce89305(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    return sub_5ce89305[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0, 
           sub_5ce89305[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0,
           sub_5ce89305[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0,
           sub_5ce89305[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_192
}

function treasury() {
    return address(treasuryAddress)
}

function oracle() {
    return oracleAddress
}

function nextPositionId() {
    return nextPositionId
}

function owner() {
    return owner
}

function sub_a36dbdd2(?) {
    return sub_a36dbdd2
}

function sub_f8438203(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    return bool(sub_f8438203[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0), 
           sub_f8438203[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0,
           sub_f8438203[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_0,
           sub_f8438203[address(arg1)][arg3][address(arg2)][Mask(8, 248, bool(arg4)) >> 248].field_256
}

function router() {
    return routerAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function sub_904ac4b7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!owner'
    stor9[address(arg1)] = arg2
}

function sub_c972701a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor10[address(arg1)] and 10^10 > -1 / stor10[address(arg1)]:
        revert with 0, 17
    return (10^10 * stor10[address(arg1)])
}

function sub_c2710a03(?) {
    require calldata.size - 4 >= 192
    require calldata.size - 36 >= 160
    require arg2 == uint64(arg2)
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == uint64(arg5)
    require arg6 == uint64(arg6)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not product[arg1].field_64:
        revert with 0, '!product-does-not-exist'
    product[arg1].field_0 = uint64(arg5)
    product[arg1].field_64 = 0
    product[arg1].field_256 = uint64(arg6)
}

function sub_74fb3394(?) {
    require calldata.size - 4 >= 192
    require calldata.size - 36 >= 160
    require arg2 == uint64(arg2)
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == uint64(arg5)
    require arg6 == uint64(arg6)
    if owner != msg.sender:
        revert with 0, '!owner'
    if product[arg1].field_64:
        revert with 0, '!product-exists'
    if uint64(arg3) <= 0:
        revert with 0, '!liqThreshold'
    product[arg1].field_0 = uint64(arg2)
    product[arg1].field_64 = uint64(arg3)
    product[arg1].field_128 = uint64(arg4)
    product[arg1].field_192 = uint64(arg5)
    product[arg1].field_256 = uint64(arg6)
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(treasuryAddress) = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x7dc0d1d0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    oracleAddress = ext_call.return_data[12 len 20]
}

function sub_3d474866(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 8
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = bool(sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_0)
            mem[_27 + 32] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_8
            mem[_27 + 64] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_72
            mem[_27 + 96] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _27
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _30:
            _48 = mem[t]
            mem[s] = bool(mem[mem[t]])
            mem[s + 32] = mem[_48 + 56 len 8]
            mem[s + 64] = mem[_48 + 88 len 8]
            mem[s + 96] = mem[_48 + 96]
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _29 + (128 * _30) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        _55 = mem[64]
        mem[64] = mem[64] + 128
        mem[_55] = bool(sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_0)
        mem[_55 + 32] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_8
        mem[_55 + 64] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_72
        mem[_55 + 96] = sub_f8438203[cd[((32 * idx) + cd[4] + 36)]].field_256
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _55
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _57 = mem[64]
    mem[mem[64]] = 32
    _58 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _58:
        _65 = mem[t]
        mem[s] = bool(mem[mem[t]])
        mem[s + 32] = mem[_65 + 56 len 8]
        mem[s + 64] = mem[_65 + 88 len 8]
        mem[s + 96] = mem[_65 + 96]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _57 + (128 * _58) + -mem[64] + 64
}

function sub_2a26f17f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_27 + 32] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_64
            mem[_27 + 64] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_128
            mem[_27 + 96] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_192
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _27
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _30:
            _48 = mem[t]
            mem[s] = mem[mem[t] + 24 len 8]
            mem[s + 32] = mem[_48 + 56 len 8]
            mem[s + 64] = mem[_48 + 88 len 8]
            mem[s + 96] = mem[_48 + 120 len 8]
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _29 + (128 * _30) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        _55 = mem[64]
        mem[64] = mem[64] + 128
        mem[_55] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_55 + 32] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_64
        mem[_55 + 64] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_128
        mem[_55 + 96] = sub_5ce89305[cd[((32 * idx) + cd[4] + 36)]].field_192
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _55
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _57 = mem[64]
    mem[mem[64]] = 32
    _58 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _58:
        _65 = mem[t]
        mem[s] = mem[mem[t] + 24 len 8]
        mem[s + 32] = mem[_65 + 56 len 8]
        mem[s + 64] = mem[_65 + 88 len 8]
        mem[s + 96] = mem[_65 + 120 len 8]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _57 + (128 * _58) + -mem[64] + 64
}

function distributeFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[address(arg1)]:
        stor10[address(arg1)] = 0
        if address(treasuryAddress):
            mem[100] = arg1
            require ext_code.size(routerAddress)
            staticcall routerAddress.0xcf54aaa0 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor10[address(arg1)] and 1 > -1 / stor10[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    if eth.balance(this.address) < stor10[address(arg1)] / 100 * 10^6:
                        revert with 0, 'Address: insufficient balance'
                    call address(treasuryAddress) with:
                       value stor10[address(arg1)] / 100 * 10^6 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
                    mem[ceil32(return_data.size) + 164] = stor10[address(arg1)] / 100 * 10^6
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] / 100 * 10^6, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] / 100 * 10^6, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] / 100 * 10^6, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if stor10[address(arg1)] and 10^ext_call.return_data[31 len 1] > -1 / stor10[address(arg1)]:
                        revert with 0, 17
                    if not arg1:
                        if eth.balance(this.address) < stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6:
                            revert with 0, 'Address: insufficient balance'
                        call address(treasuryAddress) with:
                           value stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
                        mem[ceil32(return_data.size) + 164] = stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * 10^ext_call.return_data[31 len 1] / 100 * 10^6, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                    if stor10[address(arg1)] and s * t > -1 / stor10[address(arg1)]:
                        revert with 0, 17
                    if not arg1:
                        if eth.balance(this.address) < stor10[address(arg1)] * s * t / 100 * 10^6:
                            revert with 0, 'Address: insufficient balance'
                        call address(treasuryAddress) with:
                           value stor10[address(arg1)] * s * t / 100 * 10^6 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
                        mem[ceil32(return_data.size) + 164] = stor10[address(arg1)] * s * t / 100 * 10^6
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * s * t / 100 * 10^6, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * s * t / 100 * 10^6, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), stor10[address(arg1)] * s * t / 100 * 10^6, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if stor10[address(arg1)] and 10^10 > -1 / stor10[address(arg1)]:
            revert with 0, 17
        require ext_code.size(address(treasuryAddress))
        call address(treasuryAddress).0xe0062d79 with:
             gas gas_remaining wei
            args address(arg1), 10^10 * stor10[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
