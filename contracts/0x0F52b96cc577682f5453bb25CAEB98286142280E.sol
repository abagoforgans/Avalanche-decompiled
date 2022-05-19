contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balanceOf;
address routerAddress;
uint256 stor3;
uint256 stor4; offset 32
uint256 stor4;
uint256 stor5;
address adminAddress;
address sub_52894cebAddress;
address stor8;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint8 stor9; offset 176
uint8 stor9; offset 184
uint8 stor9; offset 192
uint8 sub_76092773; offset 200
uint8 sub_9d675df8; offset 208
uint16 stor9; offset 160
uint32 stor9; offset 176
uint64 stor9; offset 208
uint64 stor9; offset 200
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 taxLimit;
uint256 sellTaxPercent;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
array of struct stor21;

function sub_52894ceb(?) {
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    return sub_52894cebAddress
}

function sub_6e95950e(?) {
    return taxLimit
}

function getAdmin() {
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    return adminAddress
}

function sellTaxPercent() {
    return sellTaxPercent
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_76092773(?) {
    return bool(sub_76092773)
}

function sub_9d675df8(?) {
    return bool(sub_9d675df8)
}

function getRouter() {
    return routerAddress
}

function taxLimit() {
    return taxLimit
}

function sub_8f590580(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_8a079501(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    taxLimit = arg1
}

function sub_23beac66(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    adminAddress = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    stor0 = arg1
}

function sub_be8fd3cb(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    sub_52894cebAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    routerAddress = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
}

function sub_224391c0(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    stor9.field_208 % 281474976710656 = arg1 % 281474976710656
    sellTaxPercent = arg2
}

function sub_a4224394(?) {
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'not enough bnb'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7308da23(?) {
    return address(stor9.field_0), 
           uint256(stor4.field_0),
           stor8,
           bool(uint8(stor9.field_168)),
           stor5,
           bool(uint8(stor9.field_160)),
           stor17,
           stor18,
           stor20,
           bool(uint8(stor9.field_192)),
           bool(uint8(stor9.field_184)),
           bool(uint8(stor9.field_176)),
           stor19,
           bool(sub_76092773)
}

function sub_3eb837c3(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_093abbc3(?) {
    require calldata.size - 4 >= 416
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    uint256(stor4.field_0) = arg2
    stor8 = arg3
    stor5 = arg5
    stor17 = arg7
    stor18 = arg8
    stor20 = arg9
    stor19 = arg12
    address(stor9.field_0) = arg1
    uint16(stor9.field_160) = uint16(arg6)
    uint8(stor9.field_168) = uint8(arg4)
    stor9.field_176 % 16777216 = arg11 % 16777216
    uint8(stor9.field_192) = uint8(arg10)
    stor9.field_200 % 72057594037927936 = arg13 % 72057594037927936
    stor9.field_208 % 281474976710656 = Mask(48, 32, arg11) >> 32
    stor9.field_208 % 281474976710656 = Mask(48, 16, arg10) >> 16
    stor9.field_208 % 281474976710656 = Mask(48, 48, arg6) >> 48
    stor9.field_208 % 281474976710656 = Mask(48, 40, arg4) >> 40
    return 1
}

function sub_c4450960(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    stor21.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor21.length > idx:
            stor21[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor21[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor21.length > idx:
            stor21[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_619b06cd(?) {
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    if not stor21.length:
        mem[(32 * stor21.length) + 128] = 32
        mem[(32 * stor21.length) + 160] = stor21.length
        mem[(32 * stor21.length) + 192 len floor32(stor21.length)] = mem[128 len floor32(stor21.length)]
        return memory
          from (32 * stor21.length) + 128
           len (96 * stor21.length) + 64
    mem[128] = address(stor21.field_0)
    idx = 128
    s = 0
    while (32 * stor21.length) + 96 > idx:
        mem[idx + 32] = stor21[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor21.length) + 192 len floor32(stor21.length)] = mem[128 len floor32(stor21.length)]
    return Array(len=stor21.length, data=mem[128 len floor32(stor21.length)], mem[(32 * stor21.length) + floor32(stor21.length) + 192 len (32 * stor21.length) - floor32(stor21.length)]), 
}

function sub_7b8d68de(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'not Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not enough tokens in contract'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sell(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        stor10 = eth.balance(adminAddress)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _76 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _82 = mem[_76 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_76 + 192])] = mem[_76 + 224 len floor32(mem[_76 + 192])]
        mem[64] = (32 * _82) + ceil32(return_data.size) + 224
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        stor11 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        mem[(32 * _82) + ceil32(return_data.size) + 228] = routerAddress
        mem[(32 * _82) + ceil32(return_data.size) + 260] = arg3
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg3
        mem[(32 * _82) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = arg4
        idx = arg3
        while idx:
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            if s <= idx:
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 100] = adminAddress
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 196] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, adminAddress, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s
                idx = idx - s
                continue 
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 0
            mem[mem[64] + 100] = adminAddress
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args idx, 0, 160, adminAddress, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = idx
            idx = 0
            continue 
    else:
        mem[96] = 3
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        stor10 = eth.balance(adminAddress)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _78 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _83 = mem[_78 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_78 + 224])] = mem[_78 + 256 len floor32(mem[_78 + 224])]
        mem[64] = (32 * _83) + ceil32(return_data.size) + 256
        require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
        stor11 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
        mem[(32 * _83) + ceil32(return_data.size) + 260] = routerAddress
        mem[(32 * _83) + ceil32(return_data.size) + 292] = arg3
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg3
        mem[(32 * _83) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = arg4
        idx = arg3
        while idx:
            mem[(32 * _83) + ceil32(return_data.size) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
            if s <= idx:
                mem[(32 * _83) + ceil32(return_data.size) + 260] = s
                mem[(32 * _83) + ceil32(return_data.size) + 292] = 0
                mem[(32 * _83) + ceil32(return_data.size) + 356] = adminAddress
                mem[(32 * _83) + ceil32(return_data.size) + 388] = block.timestamp
                mem[(32 * _83) + ceil32(return_data.size) + 324] = 160
                mem[(32 * _83) + ceil32(return_data.size) + 420] = 3
                t = 0
                while t < 96:
                    mem[t + (32 * _83) + ceil32(return_data.size) + 452] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, adminAddress, block.timestamp, 3, mem[(32 * _83) + ceil32(return_data.size) + 452 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s
                idx = idx - s
                continue 
            mem[(32 * _83) + ceil32(return_data.size) + 260] = idx
            mem[(32 * _83) + ceil32(return_data.size) + 292] = 0
            mem[(32 * _83) + ceil32(return_data.size) + 356] = adminAddress
            mem[(32 * _83) + ceil32(return_data.size) + 388] = block.timestamp
            mem[(32 * _83) + ceil32(return_data.size) + 324] = 160
            mem[(32 * _83) + ceil32(return_data.size) + 420] = 3
            s = 0
            while s < 96:
                mem[s + (32 * _83) + ceil32(return_data.size) + 452] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args idx, 0, 160, adminAddress, block.timestamp, 3, mem[(32 * _83) + ceil32(return_data.size) + 452 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = idx
            idx = 0
            continue 
    stor12 = eth.balance(adminAddress)
    stor13 = eth.balance(adminAddress) - stor10
    require stor11
    stor14 = (100 * eth.balance(adminAddress)) - (100 * stor10) / stor11
    if sellTaxPercent > (100 * eth.balance(adminAddress)) - (100 * stor10) / stor11:
        if sub_9d675df8:
            revert with 0, 'Sell T too high'
}

function sub_5e7b9490(?) {
    if stor19 <= 0:
        revert with 0, 'no'
    if uint8(stor9.field_184):
        revert with 0, 'T'
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
        mem[96] = 2
        mem[64] = 192
        mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[160] = stor8
        if uint8(stor9.field_192):
            if stor18 <= stor17:
                if uint8(stor9.field_168):
                    idx = 0
                    s = stor5
                    while idx < stor18:
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[t + mem[64] + 100] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3365 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3374 = mem[_3365]
                        require mem[_3365] <= 4294967296
                        require mem[_3365] + 32 <= return_data.size
                        require mem[_3365 + mem[_3365]] <= 4294967296 and mem[_3365] + (32 * mem[_3365 + mem[_3365]]) + 32 <= return_data.size
                        mem[_3365 + ceil32(return_data.size)] = mem[_3365 + mem[_3365]]
                        _3403 = mem[_3365 + _3374]
                        t = 0
                        while t < 32 * _3403:
                            mem[t + _3365 + ceil32(return_data.size) + 32] = mem[t + _3365 + _3374 + 32]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3403) + _3365 + ceil32(return_data.size) + 32
                        require 0 < mem[_3365 + ceil32(return_data.size)]
                        _4666 = mem[_3365 + ceil32(return_data.size) + 32]
                        if mem[_3365 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 36] = s
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 132] = block.timestamp
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 68] = 128
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + (32 * _3403) + _3365 + ceil32(return_data.size) + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5926 = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                            mem[(32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                            _5952 = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + _5926 + 32]
                            t = 0
                            while t < 32 * _5952:
                                mem[t + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _3403) + _3365 + ceil32(return_data.size) + _5926 + 64]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _5952) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64
                            uint256(stor4.field_0) -= _4666
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 68] = 64
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 100] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _3403) + _3365 + ceil32(return_data.size) + 132] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor4.field_0), 64, mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5928 = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                            require mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                            mem[(32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + mem[(32 * _3403) + _3365 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                            _5953 = mem[(32 * _3403) + _3365 + ceil32(return_data.size) + _5928 + 32]
                            s = 0
                            while s < 32 * _5953:
                                mem[s + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _3403) + _3365 + ceil32(return_data.size) + _5928 + 64]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64
                            require 1 < mem[(32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 32]
                            _7120 = mem[(32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 96]
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 68] = _7120
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 100] = 128
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args _7120, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _5953) + (32 * _3403) + _3365 + (4 * ceil32(return_data.size)) + 64
                            require return_data.size >= 32
                            _8328 = mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32
                            require mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 <= 4294967296
                            require mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 + 32 <= return_data.size
                            require mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 + 64] <= 4294967296 and mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 + (32 * mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 + 64]) + 32 <= return_data.size
                            mem[(32 * _5953) + (32 * _3403) + _3365 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7120) >> 32 + 64]
                            _8388 = mem[(32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + _8328 + 64]
                            s = 0
                            while s < 32 * _8388:
                                mem[s + (32 * _5953) + (32 * _3403) + _3365 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _5953) + (32 * _3403) + _3365 + (2 * ceil32(return_data.size)) + _8328 + 96]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8388) + (32 * _5953) + (32 * _3403) + _3365 + (4 * ceil32(return_data.size)) + 96
                            uint256(stor4.field_0) -= _4666
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = _7120
                                continue 
                        ('lt', 'gas', 100000)
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1712 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1712]
                            mem[_1712 + 32] = stor8
                            require 1 < mem[_1712]
                            mem[_1712 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1712]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1712 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1712 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1712 + 132] = 0
                            mem[_1712 + 196] = msg.sender
                            mem[_1712 + 228] = block.timestamp
                            mem[_1712 + 164] = 160
                            mem[_1712 + 260] = mem[_1712]
                            mem[_1712 + 292 len floor32(mem[_1712])] = mem[_1712 + 32 len floor32(mem[_1712])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1712 + 260 len (32 * mem[_1712]) + 32]
                        else:
                            _1714 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1714]
                            mem[_1714 + 32] = stor8
                            require 1 < mem[_1714]
                            mem[_1714 + 64] = address(stor9.field_0)
                            require 2 < mem[_1714]
                            mem[_1714 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1714]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1714 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1714 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1714 + 164] = 0
                            mem[_1714 + 228] = msg.sender
                            mem[_1714 + 260] = block.timestamp
                            mem[_1714 + 196] = 160
                            mem[_1714 + 292] = mem[_1714]
                            mem[_1714 + 324 len floor32(mem[_1714])] = mem[_1714 + 32 len floor32(mem[_1714])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1714 + 292 len (32 * mem[_1714]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
                else:
                    require stor18
                    idx = 0
                    while idx < stor18:
                        require stor20 < stor21.length
                        mem[0] = 21
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = stor21[stor20].field_0
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value uint256(stor4.field_0) / stor18 wei
                             gas gas_remaining wei
                            args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3364 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3372 = mem[_3364]
                        require mem[_3364] <= 4294967296
                        require mem[_3364] + 32 <= return_data.size
                        require mem[_3364 + mem[_3364]] <= 4294967296 and mem[_3364] + (32 * mem[_3364 + mem[_3364]]) + 32 <= return_data.size
                        mem[_3364 + ceil32(return_data.size)] = mem[_3364 + mem[_3364]]
                        _3402 = mem[_3364 + _3372]
                        s = 0
                        while s < 32 * _3402:
                            mem[s + _3364 + ceil32(return_data.size) + 32] = mem[s + _3364 + _3372 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _3402) + _3364 + ceil32(return_data.size) + 32
                        if uint8(stor9.field_160):
                            stor20++
                        stor17--
                        if gas_remaining >= 100000:
                            idx = idx + 1
                            continue 
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1706 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1706]
                            mem[_1706 + 32] = stor8
                            require 1 < mem[_1706]
                            mem[_1706 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1706]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1706 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1706 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1706 + 132] = 0
                            mem[_1706 + 196] = msg.sender
                            mem[_1706 + 228] = block.timestamp
                            mem[_1706 + 164] = 160
                            mem[_1706 + 260] = mem[_1706]
                            mem[_1706 + 292 len floor32(mem[_1706])] = mem[_1706 + 32 len floor32(mem[_1706])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1706 + 260 len (32 * mem[_1706]) + 32]
                        else:
                            _1708 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1708]
                            mem[_1708 + 32] = stor8
                            require 1 < mem[_1708]
                            mem[_1708 + 64] = address(stor9.field_0)
                            require 2 < mem[_1708]
                            mem[_1708 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1708]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1708 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1708 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1708 + 164] = 0
                            mem[_1708 + 228] = msg.sender
                            mem[_1708 + 260] = block.timestamp
                            mem[_1708 + 196] = 160
                            mem[_1708 + 292] = mem[_1708]
                            mem[_1708 + 324 len floor32(mem[_1708])] = mem[_1708 + 32 len floor32(mem[_1708])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1708 + 292 len (32 * mem[_1708]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
            else:
                stor18 = stor17
                if uint8(stor9.field_168):
                    idx = 0
                    s = stor5
                    while idx < stor18:
                        _1667 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[96]
                        _1669 = mem[96]
                        t = 0
                        while t < 32 * _1669:
                            mem[t + mem[64] + 100] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _1669) + _1667 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3367 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3378 = mem[_3367]
                        require mem[_3367] <= 4294967296
                        require mem[_3367] + 32 <= return_data.size
                        require mem[_3367 + mem[_3367]] <= 4294967296 and mem[_3367] + (32 * mem[_3367 + mem[_3367]]) + 32 <= return_data.size
                        mem[_3367 + ceil32(return_data.size)] = mem[_3367 + mem[_3367]]
                        _3405 = mem[_3367 + _3378]
                        t = 0
                        while t < 32 * _3405:
                            mem[t + _3367 + ceil32(return_data.size) + 32] = mem[t + _3367 + _3378 + 32]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3405) + _3367 + ceil32(return_data.size) + 32
                        require 0 < mem[_3367 + ceil32(return_data.size)]
                        _4667 = mem[_3367 + ceil32(return_data.size) + 32]
                        if mem[_3367 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 36] = s
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 132] = block.timestamp
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 68] = 128
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + (32 * _3405) + _3367 + ceil32(return_data.size) + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5930 = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                            mem[(32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                            _5954 = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + _5930 + 32]
                            t = 0
                            while t < 32 * _5954:
                                mem[t + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _3405) + _3367 + ceil32(return_data.size) + _5930 + 64]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _5954) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64
                            uint256(stor4.field_0) -= _4667
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 68] = 64
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 100] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _3405) + _3367 + ceil32(return_data.size) + 132] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor4.field_0), 64, mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5932 = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                            require mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                            mem[(32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + mem[(32 * _3405) + _3367 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                            _5955 = mem[(32 * _3405) + _3367 + ceil32(return_data.size) + _5932 + 32]
                            s = 0
                            while s < 32 * _5955:
                                mem[s + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _3405) + _3367 + ceil32(return_data.size) + _5932 + 64]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64
                            require 1 < mem[(32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 32]
                            _7121 = mem[(32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 96]
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 68] = _7121
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 100] = 128
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args _7121, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _5955) + (32 * _3405) + _3367 + (4 * ceil32(return_data.size)) + 64
                            require return_data.size >= 32
                            _8330 = mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32
                            require mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 <= 4294967296
                            require mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 + 32 <= return_data.size
                            require mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 + 64] <= 4294967296 and mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 + (32 * mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 + 64]) + 32 <= return_data.size
                            mem[(32 * _5955) + (32 * _3405) + _3367 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7121) >> 32 + 64]
                            _8389 = mem[(32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + _8330 + 64]
                            s = 0
                            while s < 32 * _8389:
                                mem[s + (32 * _5955) + (32 * _3405) + _3367 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _5955) + (32 * _3405) + _3367 + (2 * ceil32(return_data.size)) + _8330 + 96]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8389) + (32 * _5955) + (32 * _3405) + _3367 + (4 * ceil32(return_data.size)) + 96
                            uint256(stor4.field_0) -= _4667
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = _7121
                                continue 
                        ('lt', 'gas', 100000)
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1722 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1722]
                            mem[_1722 + 32] = stor8
                            require 1 < mem[_1722]
                            mem[_1722 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1722]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1722 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1722 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1722 + 132] = 0
                            mem[_1722 + 196] = msg.sender
                            mem[_1722 + 228] = block.timestamp
                            mem[_1722 + 164] = 160
                            mem[_1722 + 260] = mem[_1722]
                            mem[_1722 + 292 len floor32(mem[_1722])] = mem[_1722 + 32 len floor32(mem[_1722])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1722 + 260 len (32 * mem[_1722]) + 32]
                        else:
                            _1724 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1724]
                            mem[_1724 + 32] = stor8
                            require 1 < mem[_1724]
                            mem[_1724 + 64] = address(stor9.field_0)
                            require 2 < mem[_1724]
                            mem[_1724 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1724]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1724 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1724 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1724 + 164] = 0
                            mem[_1724 + 228] = msg.sender
                            mem[_1724 + 260] = block.timestamp
                            mem[_1724 + 196] = 160
                            mem[_1724 + 292] = mem[_1724]
                            mem[_1724 + 324 len floor32(mem[_1724])] = mem[_1724 + 32 len floor32(mem[_1724])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1724 + 292 len (32 * mem[_1724]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
                else:
                    require stor18
                    idx = 0
                    while idx < stor18:
                        require stor20 < stor21.length
                        mem[0] = 21
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = stor21[stor20].field_0
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value uint256(stor4.field_0) / stor18 wei
                             gas gas_remaining wei
                            args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3366 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3376 = mem[_3366]
                        require mem[_3366] <= 4294967296
                        require mem[_3366] + 32 <= return_data.size
                        require mem[_3366 + mem[_3366]] <= 4294967296 and mem[_3366] + (32 * mem[_3366 + mem[_3366]]) + 32 <= return_data.size
                        mem[_3366 + ceil32(return_data.size)] = mem[_3366 + mem[_3366]]
                        _3404 = mem[_3366 + _3376]
                        s = 0
                        while s < 32 * _3404:
                            mem[s + _3366 + ceil32(return_data.size) + 32] = mem[s + _3366 + _3376 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _3404) + _3366 + ceil32(return_data.size) + 32
                        if uint8(stor9.field_160):
                            stor20++
                        stor17--
                        if gas_remaining >= 100000:
                            idx = idx + 1
                            continue 
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1716 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1716]
                            mem[_1716 + 32] = stor8
                            require 1 < mem[_1716]
                            mem[_1716 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1716]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1716 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1716 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1716 + 132] = 0
                            mem[_1716 + 196] = msg.sender
                            mem[_1716 + 228] = block.timestamp
                            mem[_1716 + 164] = 160
                            mem[_1716 + 260] = mem[_1716]
                            mem[_1716 + 292 len floor32(mem[_1716])] = mem[_1716 + 32 len floor32(mem[_1716])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1716 + 260 len (32 * mem[_1716]) + 32]
                        else:
                            _1718 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1718]
                            mem[_1718 + 32] = stor8
                            require 1 < mem[_1718]
                            mem[_1718 + 64] = address(stor9.field_0)
                            require 2 < mem[_1718]
                            mem[_1718 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1718]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1718 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1718 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1718 + 164] = 0
                            mem[_1718 + 228] = msg.sender
                            mem[_1718 + 260] = block.timestamp
                            mem[_1718 + 196] = 160
                            mem[_1718 + 292] = mem[_1718]
                            mem[_1718 + 324 len floor32(mem[_1718])] = mem[_1718 + 32 len floor32(mem[_1718])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1718 + 292 len (32 * mem[_1718]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
            stor19--
        else:
            uint256(stor4.field_0) -= 10^15
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_52894cebAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor10 = ext_call.return_data[0]
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10^15
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^15, 64, 2, mem[292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1726 = mem[192 len 4], 232830
            require mem[192 len 4], 232830 <= 4294967296
            require mem[192 len 4], 232830 + 32 <= return_data.size
            require mem[mem[192 len 4], 232830 + 192] <= 4294967296 and mem[192 len 4], 232830 + (32 * mem[mem[192 len 4], 232830 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
            _1804 = mem[_1726 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1726 + 192])] = mem[_1726 + 224 len floor32(mem[_1726 + 192])]
            mem[64] = (32 * _1804) + ceil32(return_data.size) + 224
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            stor11 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            mem[(32 * _1804) + ceil32(return_data.size) + 224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1804) + ceil32(return_data.size) + 228] = 0
            mem[(32 * _1804) + ceil32(return_data.size) + 292] = sub_52894cebAddress
            mem[(32 * _1804) + ceil32(return_data.size) + 324] = block.timestamp
            mem[(32 * _1804) + ceil32(return_data.size) + 260] = 128
            mem[(32 * _1804) + ceil32(return_data.size) + 356] = 2
            mem[(32 * _1804) + ceil32(return_data.size) + 388 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 10^15 wei
                 gas gas_remaining wei
                args 0, 128, sub_52894cebAddress, block.timestamp, 2, mem[(32 * _1804) + ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1804) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1804) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4692 = mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0
            require mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 <= 4294967296
            require mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * _1804) + ceil32(return_data.size) + mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 + (32 * mem[(32 * _1804) + ceil32(return_data.size) + mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            mem[(32 * _1804) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1804) + ceil32(return_data.size) + mem[(32 * _1804) + ceil32(return_data.size) + 224 len 4], 0 + 224]
            _4724 = mem[(32 * _1804) + ceil32(return_data.size) + _4692 + 224]
            mem[(32 * _1804) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1804) + ceil32(return_data.size) + _4692 + 224])] = mem[(32 * _1804) + ceil32(return_data.size) + _4692 + 256 len floor32(mem[(32 * _1804) + ceil32(return_data.size) + _4692 + 224])]
            mem[64] = (32 * _4724) + (32 * _1804) + (2 * ceil32(return_data.size)) + 256
            mem[(32 * _4724) + (32 * _1804) + (2 * ceil32(return_data.size)) + 260] = sub_52894cebAddress
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_52894cebAddress
            mem[(32 * _4724) + (32 * _1804) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor12 = ext_call.return_data[0]
            stor13 = ext_call.return_data[0] - stor10
            require stor11
            stor14 = (100 * ext_call.return_data[0]) - (100 * stor10) / stor11
            if sub_76092773:
                if taxLimit > stor14:
                    revert with 0, 'T too High'
                uint8(stor9.field_192) = 1
                if stor18 <= stor17:
                    if uint8(stor9.field_168):
                        idx = 0
                        s = stor5
                        while idx < stor18:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 100] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8311 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8334 = mem[_8311]
                            require mem[_8311] <= 4294967296
                            require mem[_8311] + 32 <= return_data.size
                            require mem[_8311 + mem[_8311]] <= 4294967296 and mem[_8311] + (32 * mem[_8311 + mem[_8311]]) + 32 <= return_data.size
                            mem[_8311 + ceil32(return_data.size)] = mem[_8311 + mem[_8311]]
                            _8391 = mem[_8311 + _8334]
                            t = 0
                            while t < 32 * _8391:
                                mem[t + _8311 + ceil32(return_data.size) + 32] = mem[t + _8311 + _8334 + 32]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _8391) + _8311 + ceil32(return_data.size) + 32
                            require 0 < mem[_8311 + ceil32(return_data.size)]
                            _8768 = mem[_8311 + ceil32(return_data.size) + 32]
                            if mem[_8311 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 36] = s
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 132] = block.timestamp
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 68] = 128
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 164] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + (32 * _8391) + _8311 + ceil32(return_data.size) + 196] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9120 = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                mem[(32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                _9168 = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + _9120 + 32]
                                t = 0
                                while t < 32 * _9168:
                                    mem[t + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8391) + _8311 + ceil32(return_data.size) + _9120 + 64]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _9168) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64
                                uint256(stor4.field_0) -= _8768
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 68] = 64
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 100] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _8391) + _8311 + ceil32(return_data.size) + 132] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args uint256(stor4.field_0), 64, mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9122 = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                require mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                mem[(32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + mem[(32 * _8391) + _8311 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                _9169 = mem[(32 * _8391) + _8311 + ceil32(return_data.size) + _9122 + 32]
                                s = 0
                                while s < 32 * _9169:
                                    mem[s + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8391) + _8311 + ceil32(return_data.size) + _9122 + 64]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64
                                require 1 < mem[(32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 32]
                                _9336 = mem[(32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 96]
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 68] = _9336
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 100] = 128
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args _9336, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _9169) + (32 * _8391) + _8311 + (4 * ceil32(return_data.size)) + 64
                                require return_data.size >= 32
                                _9464 = mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32
                                require mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 <= 4294967296
                                require mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 + 32 <= return_data.size
                                require mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 + 64] <= 4294967296 and mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 + (32 * mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 + 64]) + 32 <= return_data.size
                                mem[(32 * _9169) + (32 * _8391) + _8311 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9336) >> 32 + 64]
                                _9488 = mem[(32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + _9464 + 64]
                                s = 0
                                while s < 32 * _9488:
                                    mem[s + (32 * _9169) + (32 * _8391) + _8311 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9169) + (32 * _8391) + _8311 + (2 * ceil32(return_data.size)) + _9464 + 96]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9488) + (32 * _9169) + (32 * _8391) + _8311 + (4 * ceil32(return_data.size)) + 96
                                uint256(stor4.field_0) -= _8768
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = _9336
                                    continue 
                            ('lt', 'gas', 100000)
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7186 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7186]
                                mem[_7186 + 32] = stor8
                                require 1 < mem[_7186]
                                mem[_7186 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7186]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7186 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7186 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7186 + 132] = 0
                                mem[_7186 + 196] = msg.sender
                                mem[_7186 + 228] = block.timestamp
                                mem[_7186 + 164] = 160
                                mem[_7186 + 260] = mem[_7186]
                                mem[_7186 + 292 len floor32(mem[_7186])] = mem[_7186 + 32 len floor32(mem[_7186])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7186 + 260 len (32 * mem[_7186]) + 32]
                            else:
                                _7188 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7188]
                                mem[_7188 + 32] = stor8
                                require 1 < mem[_7188]
                                mem[_7188 + 64] = address(stor9.field_0)
                                require 2 < mem[_7188]
                                mem[_7188 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7188]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7188 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7188 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7188 + 164] = 0
                                mem[_7188 + 228] = msg.sender
                                mem[_7188 + 260] = block.timestamp
                                mem[_7188 + 196] = 160
                                mem[_7188 + 292] = mem[_7188]
                                mem[_7188 + 324 len floor32(mem[_7188])] = mem[_7188 + 32 len floor32(mem[_7188])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7188 + 292 len (32 * mem[_7188]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                    else:
                        require stor18
                        idx = 0
                        while idx < stor18:
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 68] = stor21[stor20].field_0
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) / stor18 wei
                                 gas gas_remaining wei
                                args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8310 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8332 = mem[_8310]
                            require mem[_8310] <= 4294967296
                            require mem[_8310] + 32 <= return_data.size
                            require mem[_8310 + mem[_8310]] <= 4294967296 and mem[_8310] + (32 * mem[_8310 + mem[_8310]]) + 32 <= return_data.size
                            mem[_8310 + ceil32(return_data.size)] = mem[_8310 + mem[_8310]]
                            _8390 = mem[_8310 + _8332]
                            s = 0
                            while s < 32 * _8390:
                                mem[s + _8310 + ceil32(return_data.size) + 32] = mem[s + _8310 + _8332 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8390) + _8310 + ceil32(return_data.size) + 32
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                continue 
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7180 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7180]
                                mem[_7180 + 32] = stor8
                                require 1 < mem[_7180]
                                mem[_7180 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7180]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7180 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7180 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7180 + 132] = 0
                                mem[_7180 + 196] = msg.sender
                                mem[_7180 + 228] = block.timestamp
                                mem[_7180 + 164] = 160
                                mem[_7180 + 260] = mem[_7180]
                                mem[_7180 + 292 len floor32(mem[_7180])] = mem[_7180 + 32 len floor32(mem[_7180])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7180 + 260 len (32 * mem[_7180]) + 32]
                            else:
                                _7182 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7182]
                                mem[_7182 + 32] = stor8
                                require 1 < mem[_7182]
                                mem[_7182 + 64] = address(stor9.field_0)
                                require 2 < mem[_7182]
                                mem[_7182 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7182]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7182 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7182 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7182 + 164] = 0
                                mem[_7182 + 228] = msg.sender
                                mem[_7182 + 260] = block.timestamp
                                mem[_7182 + 196] = 160
                                mem[_7182 + 292] = mem[_7182]
                                mem[_7182 + 324 len floor32(mem[_7182])] = mem[_7182 + 32 len floor32(mem[_7182])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7182 + 292 len (32 * mem[_7182]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                else:
                    stor18 = stor17
                    if uint8(stor9.field_168):
                        idx = 0
                        s = stor5
                        while idx < stor18:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 100] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8313 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8338 = mem[_8313]
                            require mem[_8313] <= 4294967296
                            require mem[_8313] + 32 <= return_data.size
                            require mem[_8313 + mem[_8313]] <= 4294967296 and mem[_8313] + (32 * mem[_8313 + mem[_8313]]) + 32 <= return_data.size
                            mem[_8313 + ceil32(return_data.size)] = mem[_8313 + mem[_8313]]
                            _8393 = mem[_8313 + _8338]
                            t = 0
                            while t < 32 * _8393:
                                mem[t + _8313 + ceil32(return_data.size) + 32] = mem[t + _8313 + _8338 + 32]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _8393) + _8313 + ceil32(return_data.size) + 32
                            require 0 < mem[_8313 + ceil32(return_data.size)]
                            _8769 = mem[_8313 + ceil32(return_data.size) + 32]
                            if mem[_8313 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 36] = s
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 132] = block.timestamp
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 68] = 128
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 164] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + (32 * _8393) + _8313 + ceil32(return_data.size) + 196] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9124 = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                mem[(32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                _9170 = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + _9124 + 32]
                                t = 0
                                while t < 32 * _9170:
                                    mem[t + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8393) + _8313 + ceil32(return_data.size) + _9124 + 64]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _9170) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64
                                uint256(stor4.field_0) -= _8769
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 68] = 64
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 100] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _8393) + _8313 + ceil32(return_data.size) + 132] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args uint256(stor4.field_0), 64, mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9126 = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                require mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                mem[(32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + mem[(32 * _8393) + _8313 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                _9171 = mem[(32 * _8393) + _8313 + ceil32(return_data.size) + _9126 + 32]
                                s = 0
                                while s < 32 * _9171:
                                    mem[s + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8393) + _8313 + ceil32(return_data.size) + _9126 + 64]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64
                                require 1 < mem[(32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 32]
                                _9337 = mem[(32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 96]
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 68] = _9337
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 100] = 128
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args _9337, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _9171) + (32 * _8393) + _8313 + (4 * ceil32(return_data.size)) + 64
                                require return_data.size >= 32
                                _9466 = mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32
                                require mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 <= 4294967296
                                require mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 + 32 <= return_data.size
                                require mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 + 64] <= 4294967296 and mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 + (32 * mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 + 64]) + 32 <= return_data.size
                                mem[(32 * _9171) + (32 * _8393) + _8313 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9337) >> 32 + 64]
                                _9489 = mem[(32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + _9466 + 64]
                                s = 0
                                while s < 32 * _9489:
                                    mem[s + (32 * _9171) + (32 * _8393) + _8313 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9171) + (32 * _8393) + _8313 + (2 * ceil32(return_data.size)) + _9466 + 96]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9489) + (32 * _9171) + (32 * _8393) + _8313 + (4 * ceil32(return_data.size)) + 96
                                uint256(stor4.field_0) -= _8769
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = _9337
                                    continue 
                            ('lt', 'gas', 100000)
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7196 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7196]
                                mem[_7196 + 32] = stor8
                                require 1 < mem[_7196]
                                mem[_7196 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7196]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7196 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7196 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7196 + 132] = 0
                                mem[_7196 + 196] = msg.sender
                                mem[_7196 + 228] = block.timestamp
                                mem[_7196 + 164] = 160
                                mem[_7196 + 260] = mem[_7196]
                                mem[_7196 + 292 len floor32(mem[_7196])] = mem[_7196 + 32 len floor32(mem[_7196])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7196 + 260 len (32 * mem[_7196]) + 32]
                            else:
                                _7198 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7198]
                                mem[_7198 + 32] = stor8
                                require 1 < mem[_7198]
                                mem[_7198 + 64] = address(stor9.field_0)
                                require 2 < mem[_7198]
                                mem[_7198 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7198]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7198 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7198 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7198 + 164] = 0
                                mem[_7198 + 228] = msg.sender
                                mem[_7198 + 260] = block.timestamp
                                mem[_7198 + 196] = 160
                                mem[_7198 + 292] = mem[_7198]
                                mem[_7198 + 324 len floor32(mem[_7198])] = mem[_7198 + 32 len floor32(mem[_7198])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7198 + 292 len (32 * mem[_7198]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                    else:
                        require stor18
                        idx = 0
                        while idx < stor18:
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 68] = stor21[stor20].field_0
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) / stor18 wei
                                 gas gas_remaining wei
                                args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8312 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8336 = mem[_8312]
                            require mem[_8312] <= 4294967296
                            require mem[_8312] + 32 <= return_data.size
                            require mem[_8312 + mem[_8312]] <= 4294967296 and mem[_8312] + (32 * mem[_8312 + mem[_8312]]) + 32 <= return_data.size
                            mem[_8312 + ceil32(return_data.size)] = mem[_8312 + mem[_8312]]
                            _8392 = mem[_8312 + _8336]
                            s = 0
                            while s < 32 * _8392:
                                mem[s + _8312 + ceil32(return_data.size) + 32] = mem[s + _8312 + _8336 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8392) + _8312 + ceil32(return_data.size) + 32
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                continue 
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7190 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7190]
                                mem[_7190 + 32] = stor8
                                require 1 < mem[_7190]
                                mem[_7190 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7190]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7190 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7190 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7190 + 132] = 0
                                mem[_7190 + 196] = msg.sender
                                mem[_7190 + 228] = block.timestamp
                                mem[_7190 + 164] = 160
                                mem[_7190 + 260] = mem[_7190]
                                mem[_7190 + 292 len floor32(mem[_7190])] = mem[_7190 + 32 len floor32(mem[_7190])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7190 + 260 len (32 * mem[_7190]) + 32]
                            else:
                                _7192 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7192]
                                mem[_7192 + 32] = stor8
                                require 1 < mem[_7192]
                                mem[_7192 + 64] = address(stor9.field_0)
                                require 2 < mem[_7192]
                                mem[_7192 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7192]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7192 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7192 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7192 + 164] = 0
                                mem[_7192 + 228] = msg.sender
                                mem[_7192 + 260] = block.timestamp
                                mem[_7192 + 196] = 160
                                mem[_7192 + 292] = mem[_7192]
                                mem[_7192 + 324 len floor32(mem[_7192])] = mem[_7192 + 32 len floor32(mem[_7192])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7192 + 292 len (32 * mem[_7192]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                stor19--
            else:
                if taxLimit > stor14:
                    uint8(stor9.field_184) = 1
                else:
                    uint8(stor9.field_192) = 1
                    if stor18 <= stor17:
                        if uint8(stor9.field_168):
                            idx = 0
                            s = stor5
                            while idx < stor18:
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + mem[64] + 100] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8315 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8342 = mem[_8315]
                                require mem[_8315] <= 4294967296
                                require mem[_8315] + 32 <= return_data.size
                                require mem[_8315 + mem[_8315]] <= 4294967296 and mem[_8315] + (32 * mem[_8315 + mem[_8315]]) + 32 <= return_data.size
                                mem[_8315 + ceil32(return_data.size)] = mem[_8315 + mem[_8315]]
                                _8395 = mem[_8315 + _8342]
                                t = 0
                                while t < 32 * _8395:
                                    mem[t + _8315 + ceil32(return_data.size) + 32] = mem[t + _8315 + _8342 + 32]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _8395) + _8315 + ceil32(return_data.size) + 32
                                require 0 < mem[_8315 + ceil32(return_data.size)]
                                _8770 = mem[_8315 + ceil32(return_data.size) + 32]
                                if mem[_8315 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 36] = s
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 132] = block.timestamp
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 68] = 128
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + (32 * _8395) + _8315 + ceil32(return_data.size) + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9128 = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                    mem[(32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                    _9172 = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + _9128 + 32]
                                    t = 0
                                    while t < 32 * _9172:
                                        mem[t + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8395) + _8315 + ceil32(return_data.size) + _9128 + 64]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _9172) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64
                                    uint256(stor4.field_0) -= _8770
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                else:
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 68] = 64
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 100] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _8395) + _8315 + ceil32(return_data.size) + 132] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor4.field_0), 64, mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9130 = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                    require mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                    mem[(32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + mem[(32 * _8395) + _8315 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                    _9173 = mem[(32 * _8395) + _8315 + ceil32(return_data.size) + _9130 + 32]
                                    s = 0
                                    while s < 32 * _9173:
                                        mem[s + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8395) + _8315 + ceil32(return_data.size) + _9130 + 64]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64
                                    require 1 < mem[(32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 32]
                                    _9338 = mem[(32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 96]
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 68] = _9338
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 100] = 128
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args _9338, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _9173) + (32 * _8395) + _8315 + (4 * ceil32(return_data.size)) + 64
                                    require return_data.size >= 32
                                    _9468 = mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32
                                    require mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 <= 4294967296
                                    require mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 + 64] <= 4294967296 and mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 + (32 * mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 + 64]) + 32 <= return_data.size
                                    mem[(32 * _9173) + (32 * _8395) + _8315 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9338) >> 32 + 64]
                                    _9490 = mem[(32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + _9468 + 64]
                                    s = 0
                                    while s < 32 * _9490:
                                        mem[s + (32 * _9173) + (32 * _8395) + _8315 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9173) + (32 * _8395) + _8315 + (2 * ceil32(return_data.size)) + _9468 + 96]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9490) + (32 * _9173) + (32 * _8395) + _8315 + (4 * ceil32(return_data.size)) + 96
                                    uint256(stor4.field_0) -= _8770
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = _9338
                                        continue 
                                ('lt', 'gas', 100000)
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7206 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7206]
                                    mem[_7206 + 32] = stor8
                                    require 1 < mem[_7206]
                                    mem[_7206 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7206]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7206 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7206 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7206 + 132] = 0
                                    mem[_7206 + 196] = msg.sender
                                    mem[_7206 + 228] = block.timestamp
                                    mem[_7206 + 164] = 160
                                    mem[_7206 + 260] = mem[_7206]
                                    mem[_7206 + 292 len floor32(mem[_7206])] = mem[_7206 + 32 len floor32(mem[_7206])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7206 + 260 len (32 * mem[_7206]) + 32]
                                else:
                                    _7208 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7208]
                                    mem[_7208 + 32] = stor8
                                    require 1 < mem[_7208]
                                    mem[_7208 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7208]
                                    mem[_7208 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7208]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7208 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7208 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7208 + 164] = 0
                                    mem[_7208 + 228] = msg.sender
                                    mem[_7208 + 260] = block.timestamp
                                    mem[_7208 + 196] = 160
                                    mem[_7208 + 292] = mem[_7208]
                                    mem[_7208 + 324 len floor32(mem[_7208])] = mem[_7208 + 32 len floor32(mem[_7208])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7208 + 292 len (32 * mem[_7208]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                        else:
                            require stor18
                            idx = 0
                            while idx < stor18:
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = stor21[stor20].field_0
                                mem[mem[64] + 100] = block.timestamp
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 164] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) / stor18 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8314 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8340 = mem[_8314]
                                require mem[_8314] <= 4294967296
                                require mem[_8314] + 32 <= return_data.size
                                require mem[_8314 + mem[_8314]] <= 4294967296 and mem[_8314] + (32 * mem[_8314 + mem[_8314]]) + 32 <= return_data.size
                                mem[_8314 + ceil32(return_data.size)] = mem[_8314 + mem[_8314]]
                                _8394 = mem[_8314 + _8340]
                                s = 0
                                while s < 32 * _8394:
                                    mem[s + _8314 + ceil32(return_data.size) + 32] = mem[s + _8314 + _8340 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _8394) + _8314 + ceil32(return_data.size) + 32
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    continue 
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7200 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7200]
                                    mem[_7200 + 32] = stor8
                                    require 1 < mem[_7200]
                                    mem[_7200 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7200]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7200 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7200 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7200 + 132] = 0
                                    mem[_7200 + 196] = msg.sender
                                    mem[_7200 + 228] = block.timestamp
                                    mem[_7200 + 164] = 160
                                    mem[_7200 + 260] = mem[_7200]
                                    mem[_7200 + 292 len floor32(mem[_7200])] = mem[_7200 + 32 len floor32(mem[_7200])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7200 + 260 len (32 * mem[_7200]) + 32]
                                else:
                                    _7202 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7202]
                                    mem[_7202 + 32] = stor8
                                    require 1 < mem[_7202]
                                    mem[_7202 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7202]
                                    mem[_7202 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7202]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7202 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7202 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7202 + 164] = 0
                                    mem[_7202 + 228] = msg.sender
                                    mem[_7202 + 260] = block.timestamp
                                    mem[_7202 + 196] = 160
                                    mem[_7202 + 292] = mem[_7202]
                                    mem[_7202 + 324 len floor32(mem[_7202])] = mem[_7202 + 32 len floor32(mem[_7202])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7202 + 292 len (32 * mem[_7202]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                    else:
                        stor18 = stor17
                        if uint8(stor9.field_168):
                            idx = 0
                            s = stor5
                            while idx < stor18:
                                _7099 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = mem[96]
                                _7101 = mem[96]
                                t = 0
                                while t < 32 * _7101:
                                    mem[t + mem[64] + 100] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (32 * _7101) + _7099 + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8317 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8346 = mem[_8317]
                                require mem[_8317] <= 4294967296
                                require mem[_8317] + 32 <= return_data.size
                                require mem[_8317 + mem[_8317]] <= 4294967296 and mem[_8317] + (32 * mem[_8317 + mem[_8317]]) + 32 <= return_data.size
                                mem[_8317 + ceil32(return_data.size)] = mem[_8317 + mem[_8317]]
                                _8397 = mem[_8317 + _8346]
                                t = 0
                                while t < 32 * _8397:
                                    mem[t + _8317 + ceil32(return_data.size) + 32] = mem[t + _8317 + _8346 + 32]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _8397) + _8317 + ceil32(return_data.size) + 32
                                require 0 < mem[_8317 + ceil32(return_data.size)]
                                _8771 = mem[_8317 + ceil32(return_data.size) + 32]
                                if mem[_8317 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 36] = s
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 132] = block.timestamp
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 68] = 128
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + (32 * _8397) + _8317 + ceil32(return_data.size) + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9132 = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                    mem[(32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                    _9174 = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + _9132 + 32]
                                    t = 0
                                    while t < 32 * _9174:
                                        mem[t + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8397) + _8317 + ceil32(return_data.size) + _9132 + 64]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _9174) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64
                                    uint256(stor4.field_0) -= _8771
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                else:
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 68] = 64
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 100] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _8397) + _8317 + ceil32(return_data.size) + 132] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor4.field_0), 64, mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9134 = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                    require mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                    mem[(32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + mem[(32 * _8397) + _8317 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                    _9175 = mem[(32 * _8397) + _8317 + ceil32(return_data.size) + _9134 + 32]
                                    s = 0
                                    while s < 32 * _9175:
                                        mem[s + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8397) + _8317 + ceil32(return_data.size) + _9134 + 64]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64
                                    require 1 < mem[(32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 32]
                                    _9339 = mem[(32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 96]
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 68] = _9339
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 100] = 128
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args _9339, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _9175) + (32 * _8397) + _8317 + (4 * ceil32(return_data.size)) + 64
                                    require return_data.size >= 32
                                    _9470 = mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32
                                    require mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 <= 4294967296
                                    require mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 + 64] <= 4294967296 and mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 + (32 * mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 + 64]) + 32 <= return_data.size
                                    mem[(32 * _9175) + (32 * _8397) + _8317 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9339) >> 32 + 64]
                                    _9491 = mem[(32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + _9470 + 64]
                                    s = 0
                                    while s < 32 * _9491:
                                        mem[s + (32 * _9175) + (32 * _8397) + _8317 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9175) + (32 * _8397) + _8317 + (2 * ceil32(return_data.size)) + _9470 + 96]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9491) + (32 * _9175) + (32 * _8397) + _8317 + (4 * ceil32(return_data.size)) + 96
                                    uint256(stor4.field_0) -= _8771
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = _9339
                                        continue 
                                ('lt', 'gas', 100000)
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7216 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7216]
                                    mem[_7216 + 32] = stor8
                                    require 1 < mem[_7216]
                                    mem[_7216 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7216]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7216 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7216 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7216 + 132] = 0
                                    mem[_7216 + 196] = msg.sender
                                    mem[_7216 + 228] = block.timestamp
                                    mem[_7216 + 164] = 160
                                    mem[_7216 + 260] = mem[_7216]
                                    mem[_7216 + 292 len floor32(mem[_7216])] = mem[_7216 + 32 len floor32(mem[_7216])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7216 + 260 len (32 * mem[_7216]) + 32]
                                else:
                                    _7218 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7218]
                                    mem[_7218 + 32] = stor8
                                    require 1 < mem[_7218]
                                    mem[_7218 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7218]
                                    mem[_7218 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7218]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7218 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7218 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7218 + 164] = 0
                                    mem[_7218 + 228] = msg.sender
                                    mem[_7218 + 260] = block.timestamp
                                    mem[_7218 + 196] = 160
                                    mem[_7218 + 292] = mem[_7218]
                                    mem[_7218 + 324 len floor32(mem[_7218])] = mem[_7218 + 32 len floor32(mem[_7218])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7218 + 292 len (32 * mem[_7218]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                        else:
                            require stor18
                            idx = 0
                            while idx < stor18:
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = stor21[stor20].field_0
                                mem[mem[64] + 100] = block.timestamp
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 164] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) / stor18 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8316 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8344 = mem[_8316]
                                require mem[_8316] <= 4294967296
                                require mem[_8316] + 32 <= return_data.size
                                require mem[_8316 + mem[_8316]] <= 4294967296 and mem[_8316] + (32 * mem[_8316 + mem[_8316]]) + 32 <= return_data.size
                                mem[_8316 + ceil32(return_data.size)] = mem[_8316 + mem[_8316]]
                                _8396 = mem[_8316 + _8344]
                                s = 0
                                while s < 32 * _8396:
                                    mem[s + _8316 + ceil32(return_data.size) + 32] = mem[s + _8316 + _8344 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _8396) + _8316 + ceil32(return_data.size) + 32
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    continue 
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7210 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7210]
                                    mem[_7210 + 32] = stor8
                                    require 1 < mem[_7210]
                                    mem[_7210 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7210]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7210 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7210 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7210 + 132] = 0
                                    mem[_7210 + 196] = msg.sender
                                    mem[_7210 + 228] = block.timestamp
                                    mem[_7210 + 164] = 160
                                    mem[_7210 + 260] = mem[_7210]
                                    mem[_7210 + 292 len floor32(mem[_7210])] = mem[_7210 + 32 len floor32(mem[_7210])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7210 + 260 len (32 * mem[_7210]) + 32]
                                else:
                                    _7212 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7212]
                                    mem[_7212 + 32] = stor8
                                    require 1 < mem[_7212]
                                    mem[_7212 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7212]
                                    mem[_7212 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7212]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7212 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7212 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7212 + 164] = 0
                                    mem[_7212 + 228] = msg.sender
                                    mem[_7212 + 260] = block.timestamp
                                    mem[_7212 + 196] = 160
                                    mem[_7212 + 292] = mem[_7212]
                                    mem[_7212 + 324 len floor32(mem[_7212])] = mem[_7212 + 32 len floor32(mem[_7212])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7212 + 292 len (32 * mem[_7212]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                    stor19--
    else:
        mem[96] = 3
        mem[64] = 224
        mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[160] = address(stor9.field_0)
        mem[192] = stor8
        if uint8(stor9.field_192):
            if stor18 <= stor17:
                if uint8(stor9.field_168):
                    idx = 0
                    s = stor5
                    while idx < stor18:
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[t + mem[64] + 100] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3369 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3384 = mem[_3369]
                        require mem[_3369] <= 4294967296
                        require mem[_3369] + 32 <= return_data.size
                        require mem[_3369 + mem[_3369]] <= 4294967296 and mem[_3369] + (32 * mem[_3369 + mem[_3369]]) + 32 <= return_data.size
                        mem[_3369 + ceil32(return_data.size)] = mem[_3369 + mem[_3369]]
                        _3409 = mem[_3369 + _3384]
                        t = 0
                        while t < 32 * _3409:
                            mem[t + _3369 + ceil32(return_data.size) + 32] = mem[t + _3369 + _3384 + 32]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3409) + _3369 + ceil32(return_data.size) + 32
                        require 0 < mem[_3369 + ceil32(return_data.size)]
                        _4668 = mem[_3369 + ceil32(return_data.size) + 32]
                        if mem[_3369 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 36] = s
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 132] = block.timestamp
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 68] = 128
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + (32 * _3409) + _3369 + ceil32(return_data.size) + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5935 = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                            mem[(32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                            _5958 = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + _5935 + 32]
                            t = 0
                            while t < 32 * _5958:
                                mem[t + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _3409) + _3369 + ceil32(return_data.size) + _5935 + 64]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _5958) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64
                            uint256(stor4.field_0) -= _4668
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 68] = 64
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 100] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _3409) + _3369 + ceil32(return_data.size) + 132] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor4.field_0), 64, mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5937 = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                            require mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                            mem[(32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + mem[(32 * _3409) + _3369 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                            _5959 = mem[(32 * _3409) + _3369 + ceil32(return_data.size) + _5937 + 32]
                            s = 0
                            while s < 32 * _5959:
                                mem[s + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _3409) + _3369 + ceil32(return_data.size) + _5937 + 64]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64
                            require 1 < mem[(32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 32]
                            _7138 = mem[(32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 96]
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 68] = _7138
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 100] = 128
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args _7138, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _5959) + (32 * _3409) + _3369 + (4 * ceil32(return_data.size)) + 64
                            require return_data.size >= 32
                            _8348 = mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32
                            require mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 <= 4294967296
                            require mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 + 32 <= return_data.size
                            require mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 + 64] <= 4294967296 and mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 + (32 * mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 + 64]) + 32 <= return_data.size
                            mem[(32 * _5959) + (32 * _3409) + _3369 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7138) >> 32 + 64]
                            _8398 = mem[(32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + _8348 + 64]
                            s = 0
                            while s < 32 * _8398:
                                mem[s + (32 * _5959) + (32 * _3409) + _3369 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _5959) + (32 * _3409) + _3369 + (2 * ceil32(return_data.size)) + _8348 + 96]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8398) + (32 * _5959) + (32 * _3409) + _3369 + (4 * ceil32(return_data.size)) + 96
                            uint256(stor4.field_0) -= _4668
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = _7138
                                continue 
                        ('lt', 'gas', 100000)
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1734 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1734]
                            mem[_1734 + 32] = stor8
                            require 1 < mem[_1734]
                            mem[_1734 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1734]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1734 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1734 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1734 + 132] = 0
                            mem[_1734 + 196] = msg.sender
                            mem[_1734 + 228] = block.timestamp
                            mem[_1734 + 164] = 160
                            mem[_1734 + 260] = mem[_1734]
                            mem[_1734 + 292 len floor32(mem[_1734])] = mem[_1734 + 32 len floor32(mem[_1734])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1734 + 260 len (32 * mem[_1734]) + 32]
                        else:
                            _1736 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1736]
                            mem[_1736 + 32] = stor8
                            require 1 < mem[_1736]
                            mem[_1736 + 64] = address(stor9.field_0)
                            require 2 < mem[_1736]
                            mem[_1736 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1736]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1736 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1736 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1736 + 164] = 0
                            mem[_1736 + 228] = msg.sender
                            mem[_1736 + 260] = block.timestamp
                            mem[_1736 + 196] = 160
                            mem[_1736 + 292] = mem[_1736]
                            mem[_1736 + 324 len floor32(mem[_1736])] = mem[_1736 + 32 len floor32(mem[_1736])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1736 + 292 len (32 * mem[_1736]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
                else:
                    require stor18
                    idx = 0
                    while idx < stor18:
                        require stor20 < stor21.length
                        mem[0] = 21
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = stor21[stor20].field_0
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value uint256(stor4.field_0) / stor18 wei
                             gas gas_remaining wei
                            args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3368 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3382 = mem[_3368]
                        require mem[_3368] <= 4294967296
                        require mem[_3368] + 32 <= return_data.size
                        require mem[_3368 + mem[_3368]] <= 4294967296 and mem[_3368] + (32 * mem[_3368 + mem[_3368]]) + 32 <= return_data.size
                        mem[_3368 + ceil32(return_data.size)] = mem[_3368 + mem[_3368]]
                        _3408 = mem[_3368 + _3382]
                        s = 0
                        while s < 32 * _3408:
                            mem[s + _3368 + ceil32(return_data.size) + 32] = mem[s + _3368 + _3382 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _3408) + _3368 + ceil32(return_data.size) + 32
                        if uint8(stor9.field_160):
                            stor20++
                        stor17--
                        if gas_remaining >= 100000:
                            idx = idx + 1
                            continue 
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1728 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1728]
                            mem[_1728 + 32] = stor8
                            require 1 < mem[_1728]
                            mem[_1728 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1728]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1728 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1728 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1728 + 132] = 0
                            mem[_1728 + 196] = msg.sender
                            mem[_1728 + 228] = block.timestamp
                            mem[_1728 + 164] = 160
                            mem[_1728 + 260] = mem[_1728]
                            mem[_1728 + 292 len floor32(mem[_1728])] = mem[_1728 + 32 len floor32(mem[_1728])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1728 + 260 len (32 * mem[_1728]) + 32]
                        else:
                            _1730 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1730]
                            mem[_1730 + 32] = stor8
                            require 1 < mem[_1730]
                            mem[_1730 + 64] = address(stor9.field_0)
                            require 2 < mem[_1730]
                            mem[_1730 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1730]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1730 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1730 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1730 + 164] = 0
                            mem[_1730 + 228] = msg.sender
                            mem[_1730 + 260] = block.timestamp
                            mem[_1730 + 196] = 160
                            mem[_1730 + 292] = mem[_1730]
                            mem[_1730 + 324 len floor32(mem[_1730])] = mem[_1730 + 32 len floor32(mem[_1730])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1730 + 292 len (32 * mem[_1730]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
            else:
                stor18 = stor17
                if uint8(stor9.field_168):
                    idx = 0
                    s = stor5
                    while idx < stor18:
                        _1675 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[96]
                        _1677 = mem[96]
                        t = 0
                        while t < 32 * _1677:
                            mem[t + mem[64] + 100] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _1677) + _1675 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3371 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3388 = mem[_3371]
                        require mem[_3371] <= 4294967296
                        require mem[_3371] + 32 <= return_data.size
                        require mem[_3371 + mem[_3371]] <= 4294967296 and mem[_3371] + (32 * mem[_3371 + mem[_3371]]) + 32 <= return_data.size
                        mem[_3371 + ceil32(return_data.size)] = mem[_3371 + mem[_3371]]
                        _3411 = mem[_3371 + _3388]
                        t = 0
                        while t < 32 * _3411:
                            mem[t + _3371 + ceil32(return_data.size) + 32] = mem[t + _3371 + _3388 + 32]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _3411) + _3371 + ceil32(return_data.size) + 32
                        require 0 < mem[_3371 + ceil32(return_data.size)]
                        _4669 = mem[_3371 + ceil32(return_data.size) + 32]
                        if mem[_3371 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 36] = s
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 132] = block.timestamp
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 68] = 128
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + (32 * _3411) + _3371 + ceil32(return_data.size) + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5939 = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                            mem[(32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                            _5960 = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + _5939 + 32]
                            t = 0
                            while t < 32 * _5960:
                                mem[t + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _3411) + _3371 + ceil32(return_data.size) + _5939 + 64]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _5960) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64
                            uint256(stor4.field_0) -= _4669
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 68] = 64
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 100] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _3411) + _3371 + ceil32(return_data.size) + 132] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor4.field_0), 64, mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 32
                            require return_data.size >= 32
                            _5941 = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                            require mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                            mem[(32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + mem[(32 * _3411) + _3371 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                            _5961 = mem[(32 * _3411) + _3371 + ceil32(return_data.size) + _5941 + 32]
                            s = 0
                            while s < 32 * _5961:
                                mem[s + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _3411) + _3371 + ceil32(return_data.size) + _5941 + 64]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64
                            require 1 < mem[(32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 32]
                            _7139 = mem[(32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 96]
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 68] = _7139
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 100] = 128
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + (32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args _7139, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _5961) + (32 * _3411) + _3371 + (4 * ceil32(return_data.size)) + 64
                            require return_data.size >= 32
                            _8350 = mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32
                            require mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 <= 4294967296
                            require mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 + 32 <= return_data.size
                            require mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 + 64] <= 4294967296 and mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 + (32 * mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 + 64]) + 32 <= return_data.size
                            mem[(32 * _5961) + (32 * _3411) + _3371 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _7139) >> 32 + 64]
                            _8399 = mem[(32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + _8350 + 64]
                            s = 0
                            while s < 32 * _8399:
                                mem[s + (32 * _5961) + (32 * _3411) + _3371 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _5961) + (32 * _3411) + _3371 + (2 * ceil32(return_data.size)) + _8350 + 96]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8399) + (32 * _5961) + (32 * _3411) + _3371 + (4 * ceil32(return_data.size)) + 96
                            uint256(stor4.field_0) -= _4669
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                s = _7139
                                continue 
                        ('lt', 'gas', 100000)
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1744 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1744]
                            mem[_1744 + 32] = stor8
                            require 1 < mem[_1744]
                            mem[_1744 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1744]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1744 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1744 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1744 + 132] = 0
                            mem[_1744 + 196] = msg.sender
                            mem[_1744 + 228] = block.timestamp
                            mem[_1744 + 164] = 160
                            mem[_1744 + 260] = mem[_1744]
                            mem[_1744 + 292 len floor32(mem[_1744])] = mem[_1744 + 32 len floor32(mem[_1744])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1744 + 260 len (32 * mem[_1744]) + 32]
                        else:
                            _1746 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1746]
                            mem[_1746 + 32] = stor8
                            require 1 < mem[_1746]
                            mem[_1746 + 64] = address(stor9.field_0)
                            require 2 < mem[_1746]
                            mem[_1746 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1746]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1746 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1746 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1746 + 164] = 0
                            mem[_1746 + 228] = msg.sender
                            mem[_1746 + 260] = block.timestamp
                            mem[_1746 + 196] = 160
                            mem[_1746 + 292] = mem[_1746]
                            mem[_1746 + 324 len floor32(mem[_1746])] = mem[_1746 + 32 len floor32(mem[_1746])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1746 + 292 len (32 * mem[_1746]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
                else:
                    require stor18
                    idx = 0
                    while idx < stor18:
                        require stor20 < stor21.length
                        mem[0] = 21
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = stor21[stor20].field_0
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value uint256(stor4.field_0) / stor18 wei
                             gas gas_remaining wei
                            args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3370 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3386 = mem[_3370]
                        require mem[_3370] <= 4294967296
                        require mem[_3370] + 32 <= return_data.size
                        require mem[_3370 + mem[_3370]] <= 4294967296 and mem[_3370] + (32 * mem[_3370 + mem[_3370]]) + 32 <= return_data.size
                        mem[_3370 + ceil32(return_data.size)] = mem[_3370 + mem[_3370]]
                        _3410 = mem[_3370 + _3386]
                        s = 0
                        while s < 32 * _3410:
                            mem[s + _3370 + ceil32(return_data.size) + 32] = mem[s + _3370 + _3386 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _3410) + _3370 + ceil32(return_data.size) + 32
                        if uint8(stor9.field_160):
                            stor20++
                        stor17--
                        if gas_remaining >= 100000:
                            idx = idx + 1
                            continue 
                        stor19--
                    if uint8(stor9.field_176):
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                            _1738 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_1738]
                            mem[_1738 + 32] = stor8
                            require 1 < mem[_1738]
                            mem[_1738 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1738]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1738 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1738 + 100] = ext_call.return_data[0] / 10^6
                            mem[_1738 + 132] = 0
                            mem[_1738 + 196] = msg.sender
                            mem[_1738 + 228] = block.timestamp
                            mem[_1738 + 164] = 160
                            mem[_1738 + 260] = mem[_1738]
                            mem[_1738 + 292 len floor32(mem[_1738])] = mem[_1738 + 32 len floor32(mem[_1738])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1738 + 260 len (32 * mem[_1738]) + 32]
                        else:
                            _1740 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require mem[_1740]
                            mem[_1740 + 32] = stor8
                            require 1 < mem[_1740]
                            mem[_1740 + 64] = address(stor9.field_0)
                            require 2 < mem[_1740]
                            mem[_1740 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require ext_code.size(stor8)
                            staticcall stor8.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 < mem[_1740]
                            require ext_code.size(stor8)
                            call stor8.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0] / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1740 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[_1740 + 132] = ext_call.return_data[0] / 10^6
                            mem[_1740 + 164] = 0
                            mem[_1740 + 228] = msg.sender
                            mem[_1740 + 260] = block.timestamp
                            mem[_1740 + 196] = 160
                            mem[_1740 + 292] = mem[_1740]
                            mem[_1740 + 324 len floor32(mem[_1740])] = mem[_1740 + 32 len floor32(mem[_1740])]
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_1740 + 292 len (32 * mem[_1740]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor9.field_176) = 0
            stor19--
        else:
            uint256(stor4.field_0) -= 10^15
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_52894cebAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor10 = ext_call.return_data[0]
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = 10^15
            mem[260] = 64
            mem[292] = 3
            mem[324 len 0] = None
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^15, 64, 3, mem[324 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1748 = mem[224 len 4], 232830
            require mem[224 len 4], 232830 <= 4294967296
            require mem[224 len 4], 232830 + 32 <= return_data.size
            require mem[mem[224 len 4], 232830 + 224] <= 4294967296 and mem[224 len 4], 232830 + (32 * mem[mem[224 len 4], 232830 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
            _1817 = mem[_1748 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_1748 + 224])] = mem[_1748 + 256 len floor32(mem[_1748 + 224])]
            mem[64] = (32 * _1817) + ceil32(return_data.size) + 256
            require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
            stor11 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
            mem[(32 * _1817) + ceil32(return_data.size) + 256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1817) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _1817) + ceil32(return_data.size) + 324] = sub_52894cebAddress
            mem[(32 * _1817) + ceil32(return_data.size) + 356] = block.timestamp
            mem[(32 * _1817) + ceil32(return_data.size) + 292] = 128
            mem[(32 * _1817) + ceil32(return_data.size) + 388] = 3
            mem[(32 * _1817) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 10^15 wei
                 gas gas_remaining wei
                args 0, 128, sub_52894cebAddress, block.timestamp, 3, mem[(32 * _1817) + ceil32(return_data.size) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1817) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1817) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _4702 = mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0
            require mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 <= 4294967296
            require mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 + 32 <= return_data.size
            require mem[(32 * _1817) + ceil32(return_data.size) + mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 + 256] <= 4294967296 and mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 + (32 * mem[(32 * _1817) + ceil32(return_data.size) + mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[(32 * _1817) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _1817) + ceil32(return_data.size) + mem[(32 * _1817) + ceil32(return_data.size) + 256 len 4], 0 + 256]
            _4727 = mem[(32 * _1817) + ceil32(return_data.size) + _4702 + 256]
            mem[(32 * _1817) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _1817) + ceil32(return_data.size) + _4702 + 256])] = mem[(32 * _1817) + ceil32(return_data.size) + _4702 + 288 len floor32(mem[(32 * _1817) + ceil32(return_data.size) + _4702 + 256])]
            mem[64] = (32 * _4727) + (32 * _1817) + (2 * ceil32(return_data.size)) + 288
            mem[(32 * _4727) + (32 * _1817) + (2 * ceil32(return_data.size)) + 292] = sub_52894cebAddress
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_52894cebAddress
            mem[(32 * _4727) + (32 * _1817) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor12 = ext_call.return_data[0]
            stor13 = ext_call.return_data[0] - stor10
            require stor11
            stor14 = (100 * ext_call.return_data[0]) - (100 * stor10) / stor11
            if sub_76092773:
                if taxLimit > stor14:
                    revert with 0, 'T too High'
                uint8(stor9.field_192) = 1
                if stor18 <= stor17:
                    if uint8(stor9.field_168):
                        idx = 0
                        s = stor5
                        while idx < stor18:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 100] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8321 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8354 = mem[_8321]
                            require mem[_8321] <= 4294967296
                            require mem[_8321] + 32 <= return_data.size
                            require mem[_8321 + mem[_8321]] <= 4294967296 and mem[_8321] + (32 * mem[_8321 + mem[_8321]]) + 32 <= return_data.size
                            mem[_8321 + ceil32(return_data.size)] = mem[_8321 + mem[_8321]]
                            _8401 = mem[_8321 + _8354]
                            t = 0
                            while t < 32 * _8401:
                                mem[t + _8321 + ceil32(return_data.size) + 32] = mem[t + _8321 + _8354 + 32]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _8401) + _8321 + ceil32(return_data.size) + 32
                            require 0 < mem[_8321 + ceil32(return_data.size)]
                            _8772 = mem[_8321 + ceil32(return_data.size) + 32]
                            if mem[_8321 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 36] = s
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 132] = block.timestamp
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 68] = 128
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 164] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + (32 * _8401) + _8321 + ceil32(return_data.size) + 196] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9136 = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                mem[(32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                _9176 = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + _9136 + 32]
                                t = 0
                                while t < 32 * _9176:
                                    mem[t + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8401) + _8321 + ceil32(return_data.size) + _9136 + 64]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _9176) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64
                                uint256(stor4.field_0) -= _8772
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 68] = 64
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 100] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _8401) + _8321 + ceil32(return_data.size) + 132] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args uint256(stor4.field_0), 64, mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9138 = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                require mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                mem[(32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + mem[(32 * _8401) + _8321 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                _9177 = mem[(32 * _8401) + _8321 + ceil32(return_data.size) + _9138 + 32]
                                s = 0
                                while s < 32 * _9177:
                                    mem[s + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8401) + _8321 + ceil32(return_data.size) + _9138 + 64]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64
                                require 1 < mem[(32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 32]
                                _9340 = mem[(32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 96]
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 68] = _9340
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 100] = 128
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args _9340, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _9177) + (32 * _8401) + _8321 + (4 * ceil32(return_data.size)) + 64
                                require return_data.size >= 32
                                _9472 = mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32
                                require mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 <= 4294967296
                                require mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 + 32 <= return_data.size
                                require mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 + 64] <= 4294967296 and mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 + (32 * mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 + 64]) + 32 <= return_data.size
                                mem[(32 * _9177) + (32 * _8401) + _8321 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9340) >> 32 + 64]
                                _9492 = mem[(32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + _9472 + 64]
                                s = 0
                                while s < 32 * _9492:
                                    mem[s + (32 * _9177) + (32 * _8401) + _8321 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9177) + (32 * _8401) + _8321 + (2 * ceil32(return_data.size)) + _9472 + 96]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9492) + (32 * _9177) + (32 * _8401) + _8321 + (4 * ceil32(return_data.size)) + 96
                                uint256(stor4.field_0) -= _8772
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = _9340
                                    continue 
                            ('lt', 'gas', 100000)
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7234 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7234]
                                mem[_7234 + 32] = stor8
                                require 1 < mem[_7234]
                                mem[_7234 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7234]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7234 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7234 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7234 + 132] = 0
                                mem[_7234 + 196] = msg.sender
                                mem[_7234 + 228] = block.timestamp
                                mem[_7234 + 164] = 160
                                mem[_7234 + 260] = mem[_7234]
                                mem[_7234 + 292 len floor32(mem[_7234])] = mem[_7234 + 32 len floor32(mem[_7234])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7234 + 260 len (32 * mem[_7234]) + 32]
                            else:
                                _7236 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7236]
                                mem[_7236 + 32] = stor8
                                require 1 < mem[_7236]
                                mem[_7236 + 64] = address(stor9.field_0)
                                require 2 < mem[_7236]
                                mem[_7236 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7236]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7236 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7236 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7236 + 164] = 0
                                mem[_7236 + 228] = msg.sender
                                mem[_7236 + 260] = block.timestamp
                                mem[_7236 + 196] = 160
                                mem[_7236 + 292] = mem[_7236]
                                mem[_7236 + 324 len floor32(mem[_7236])] = mem[_7236 + 32 len floor32(mem[_7236])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7236 + 292 len (32 * mem[_7236]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                    else:
                        require stor18
                        idx = 0
                        while idx < stor18:
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 68] = stor21[stor20].field_0
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) / stor18 wei
                                 gas gas_remaining wei
                                args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8320 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8352 = mem[_8320]
                            require mem[_8320] <= 4294967296
                            require mem[_8320] + 32 <= return_data.size
                            require mem[_8320 + mem[_8320]] <= 4294967296 and mem[_8320] + (32 * mem[_8320 + mem[_8320]]) + 32 <= return_data.size
                            mem[_8320 + ceil32(return_data.size)] = mem[_8320 + mem[_8320]]
                            _8400 = mem[_8320 + _8352]
                            s = 0
                            while s < 32 * _8400:
                                mem[s + _8320 + ceil32(return_data.size) + 32] = mem[s + _8320 + _8352 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8400) + _8320 + ceil32(return_data.size) + 32
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                continue 
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7228 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7228]
                                mem[_7228 + 32] = stor8
                                require 1 < mem[_7228]
                                mem[_7228 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7228]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7228 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7228 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7228 + 132] = 0
                                mem[_7228 + 196] = msg.sender
                                mem[_7228 + 228] = block.timestamp
                                mem[_7228 + 164] = 160
                                mem[_7228 + 260] = mem[_7228]
                                mem[_7228 + 292 len floor32(mem[_7228])] = mem[_7228 + 32 len floor32(mem[_7228])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7228 + 260 len (32 * mem[_7228]) + 32]
                            else:
                                _7230 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7230]
                                mem[_7230 + 32] = stor8
                                require 1 < mem[_7230]
                                mem[_7230 + 64] = address(stor9.field_0)
                                require 2 < mem[_7230]
                                mem[_7230 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7230]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7230 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7230 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7230 + 164] = 0
                                mem[_7230 + 228] = msg.sender
                                mem[_7230 + 260] = block.timestamp
                                mem[_7230 + 196] = 160
                                mem[_7230 + 292] = mem[_7230]
                                mem[_7230 + 324 len floor32(mem[_7230])] = mem[_7230 + 32 len floor32(mem[_7230])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7230 + 292 len (32 * mem[_7230]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                else:
                    stor18 = stor17
                    if uint8(stor9.field_168):
                        idx = 0
                        s = stor5
                        while idx < stor18:
                            _7111 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[96]
                            _7113 = mem[96]
                            t = 0
                            while t < 32 * _7113:
                                mem[t + mem[64] + 100] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (32 * _7113) + _7111 + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8323 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8358 = mem[_8323]
                            require mem[_8323] <= 4294967296
                            require mem[_8323] + 32 <= return_data.size
                            require mem[_8323 + mem[_8323]] <= 4294967296 and mem[_8323] + (32 * mem[_8323 + mem[_8323]]) + 32 <= return_data.size
                            mem[_8323 + ceil32(return_data.size)] = mem[_8323 + mem[_8323]]
                            _8403 = mem[_8323 + _8358]
                            t = 0
                            while t < 32 * _8403:
                                mem[t + _8323 + ceil32(return_data.size) + 32] = mem[t + _8323 + _8358 + 32]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _8403) + _8323 + ceil32(return_data.size) + 32
                            require 0 < mem[_8323 + ceil32(return_data.size)]
                            _8773 = mem[_8323 + ceil32(return_data.size) + 32]
                            if mem[_8323 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 36] = s
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 132] = block.timestamp
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 68] = 128
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 164] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + (32 * _8403) + _8323 + ceil32(return_data.size) + 196] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9140 = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                mem[(32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                _9178 = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + _9140 + 32]
                                t = 0
                                while t < 32 * _9178:
                                    mem[t + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8403) + _8323 + ceil32(return_data.size) + _9140 + 64]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _9178) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64
                                uint256(stor4.field_0) -= _8773
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 68] = 64
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 100] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _8403) + _8323 + ceil32(return_data.size) + 132] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args uint256(stor4.field_0), 64, mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 32
                                require return_data.size >= 32
                                _9142 = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                require mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                mem[(32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + mem[(32 * _8403) + _8323 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                _9179 = mem[(32 * _8403) + _8323 + ceil32(return_data.size) + _9142 + 32]
                                s = 0
                                while s < 32 * _9179:
                                    mem[s + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8403) + _8323 + ceil32(return_data.size) + _9142 + 64]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64
                                require 1 < mem[(32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 32]
                                _9341 = mem[(32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 96]
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 68] = _9341
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 100] = 128
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + (32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args _9341, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _9179) + (32 * _8403) + _8323 + (4 * ceil32(return_data.size)) + 64
                                require return_data.size >= 32
                                _9474 = mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32
                                require mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 <= 4294967296
                                require mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 + 32 <= return_data.size
                                require mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 + 64] <= 4294967296 and mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 + (32 * mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 + 64]) + 32 <= return_data.size
                                mem[(32 * _9179) + (32 * _8403) + _8323 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9341) >> 32 + 64]
                                _9493 = mem[(32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + _9474 + 64]
                                s = 0
                                while s < 32 * _9493:
                                    mem[s + (32 * _9179) + (32 * _8403) + _8323 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9179) + (32 * _8403) + _8323 + (2 * ceil32(return_data.size)) + _9474 + 96]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _9493) + (32 * _9179) + (32 * _8403) + _8323 + (4 * ceil32(return_data.size)) + 96
                                uint256(stor4.field_0) -= _8773
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    s = _9341
                                    continue 
                            ('lt', 'gas', 100000)
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7244 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7244]
                                mem[_7244 + 32] = stor8
                                require 1 < mem[_7244]
                                mem[_7244 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7244]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7244 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7244 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7244 + 132] = 0
                                mem[_7244 + 196] = msg.sender
                                mem[_7244 + 228] = block.timestamp
                                mem[_7244 + 164] = 160
                                mem[_7244 + 260] = mem[_7244]
                                mem[_7244 + 292 len floor32(mem[_7244])] = mem[_7244 + 32 len floor32(mem[_7244])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7244 + 260 len (32 * mem[_7244]) + 32]
                            else:
                                _7246 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7246]
                                mem[_7246 + 32] = stor8
                                require 1 < mem[_7246]
                                mem[_7246 + 64] = address(stor9.field_0)
                                require 2 < mem[_7246]
                                mem[_7246 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7246]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7246 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7246 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7246 + 164] = 0
                                mem[_7246 + 228] = msg.sender
                                mem[_7246 + 260] = block.timestamp
                                mem[_7246 + 196] = 160
                                mem[_7246 + 292] = mem[_7246]
                                mem[_7246 + 324 len floor32(mem[_7246])] = mem[_7246 + 32 len floor32(mem[_7246])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7246 + 292 len (32 * mem[_7246]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                    else:
                        require stor18
                        idx = 0
                        while idx < stor18:
                            require stor20 < stor21.length
                            mem[0] = 21
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 68] = stor21[stor20].field_0
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) / stor18 wei
                                 gas gas_remaining wei
                                args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8322 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8356 = mem[_8322]
                            require mem[_8322] <= 4294967296
                            require mem[_8322] + 32 <= return_data.size
                            require mem[_8322 + mem[_8322]] <= 4294967296 and mem[_8322] + (32 * mem[_8322 + mem[_8322]]) + 32 <= return_data.size
                            mem[_8322 + ceil32(return_data.size)] = mem[_8322 + mem[_8322]]
                            _8402 = mem[_8322 + _8356]
                            s = 0
                            while s < 32 * _8402:
                                mem[s + _8322 + ceil32(return_data.size) + 32] = mem[s + _8322 + _8356 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _8402) + _8322 + ceil32(return_data.size) + 32
                            if uint8(stor9.field_160):
                                stor20++
                            stor17--
                            if gas_remaining >= 100000:
                                idx = idx + 1
                                continue 
                            stor19--
                        if uint8(stor9.field_176):
                            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                _7238 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_7238]
                                mem[_7238 + 32] = stor8
                                require 1 < mem[_7238]
                                mem[_7238 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7238]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7238 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7238 + 100] = ext_call.return_data[0] / 10^6
                                mem[_7238 + 132] = 0
                                mem[_7238 + 196] = msg.sender
                                mem[_7238 + 228] = block.timestamp
                                mem[_7238 + 164] = 160
                                mem[_7238 + 260] = mem[_7238]
                                mem[_7238 + 292 len floor32(mem[_7238])] = mem[_7238 + 32 len floor32(mem[_7238])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7238 + 260 len (32 * mem[_7238]) + 32]
                            else:
                                _7240 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                require mem[_7240]
                                mem[_7240 + 32] = stor8
                                require 1 < mem[_7240]
                                mem[_7240 + 64] = address(stor9.field_0)
                                require 2 < mem[_7240]
                                mem[_7240 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0 < mem[_7240]
                                require ext_code.size(stor8)
                                call stor8.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, ext_call.return_data[0] / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_7240 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_7240 + 132] = ext_call.return_data[0] / 10^6
                                mem[_7240 + 164] = 0
                                mem[_7240 + 228] = msg.sender
                                mem[_7240 + 260] = block.timestamp
                                mem[_7240 + 196] = 160
                                mem[_7240 + 292] = mem[_7240]
                                mem[_7240 + 324 len floor32(mem[_7240])] = mem[_7240 + 32 len floor32(mem[_7240])]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7240 + 292 len (32 * mem[_7240]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor9.field_176) = 0
                stor19--
            else:
                if taxLimit > stor14:
                    uint8(stor9.field_184) = 1
                else:
                    uint8(stor9.field_192) = 1
                    if stor18 <= stor17:
                        if uint8(stor9.field_168):
                            idx = 0
                            s = stor5
                            while idx < stor18:
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + mem[64] + 100] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8325 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8362 = mem[_8325]
                                require mem[_8325] <= 4294967296
                                require mem[_8325] + 32 <= return_data.size
                                require mem[_8325 + mem[_8325]] <= 4294967296 and mem[_8325] + (32 * mem[_8325 + mem[_8325]]) + 32 <= return_data.size
                                mem[_8325 + ceil32(return_data.size)] = mem[_8325 + mem[_8325]]
                                _8405 = mem[_8325 + _8362]
                                t = 0
                                while t < 32 * _8405:
                                    mem[t + _8325 + ceil32(return_data.size) + 32] = mem[t + _8325 + _8362 + 32]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _8405) + _8325 + ceil32(return_data.size) + 32
                                require 0 < mem[_8325 + ceil32(return_data.size)]
                                _8774 = mem[_8325 + ceil32(return_data.size) + 32]
                                if mem[_8325 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 36] = s
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 132] = block.timestamp
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 68] = 128
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + (32 * _8405) + _8325 + ceil32(return_data.size) + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9144 = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                    mem[(32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                    _9180 = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + _9144 + 32]
                                    t = 0
                                    while t < 32 * _9180:
                                        mem[t + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8405) + _8325 + ceil32(return_data.size) + _9144 + 64]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _9180) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64
                                    uint256(stor4.field_0) -= _8774
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                else:
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 68] = 64
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 100] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _8405) + _8325 + ceil32(return_data.size) + 132] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor4.field_0), 64, mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9146 = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                    require mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                    mem[(32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + mem[(32 * _8405) + _8325 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                    _9181 = mem[(32 * _8405) + _8325 + ceil32(return_data.size) + _9146 + 32]
                                    s = 0
                                    while s < 32 * _9181:
                                        mem[s + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8405) + _8325 + ceil32(return_data.size) + _9146 + 64]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64
                                    require 1 < mem[(32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 32]
                                    _9342 = mem[(32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 96]
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 68] = _9342
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 100] = 128
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args _9342, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _9181) + (32 * _8405) + _8325 + (4 * ceil32(return_data.size)) + 64
                                    require return_data.size >= 32
                                    _9476 = mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32
                                    require mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 <= 4294967296
                                    require mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 + 64] <= 4294967296 and mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 + (32 * mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 + 64]) + 32 <= return_data.size
                                    mem[(32 * _9181) + (32 * _8405) + _8325 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9342) >> 32 + 64]
                                    _9494 = mem[(32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + _9476 + 64]
                                    s = 0
                                    while s < 32 * _9494:
                                        mem[s + (32 * _9181) + (32 * _8405) + _8325 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9181) + (32 * _8405) + _8325 + (2 * ceil32(return_data.size)) + _9476 + 96]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9494) + (32 * _9181) + (32 * _8405) + _8325 + (4 * ceil32(return_data.size)) + 96
                                    uint256(stor4.field_0) -= _8774
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = _9342
                                        continue 
                                ('lt', 'gas', 100000)
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7254 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7254]
                                    mem[_7254 + 32] = stor8
                                    require 1 < mem[_7254]
                                    mem[_7254 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7254]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7254 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7254 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7254 + 132] = 0
                                    mem[_7254 + 196] = msg.sender
                                    mem[_7254 + 228] = block.timestamp
                                    mem[_7254 + 164] = 160
                                    mem[_7254 + 260] = mem[_7254]
                                    mem[_7254 + 292 len floor32(mem[_7254])] = mem[_7254 + 32 len floor32(mem[_7254])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7254 + 260 len (32 * mem[_7254]) + 32]
                                else:
                                    _7256 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7256]
                                    mem[_7256 + 32] = stor8
                                    require 1 < mem[_7256]
                                    mem[_7256 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7256]
                                    mem[_7256 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7256]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7256 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7256 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7256 + 164] = 0
                                    mem[_7256 + 228] = msg.sender
                                    mem[_7256 + 260] = block.timestamp
                                    mem[_7256 + 196] = 160
                                    mem[_7256 + 292] = mem[_7256]
                                    mem[_7256 + 324 len floor32(mem[_7256])] = mem[_7256 + 32 len floor32(mem[_7256])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7256 + 292 len (32 * mem[_7256]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                        else:
                            require stor18
                            idx = 0
                            while idx < stor18:
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = stor21[stor20].field_0
                                mem[mem[64] + 100] = block.timestamp
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 164] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) / stor18 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8324 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8360 = mem[_8324]
                                require mem[_8324] <= 4294967296
                                require mem[_8324] + 32 <= return_data.size
                                require mem[_8324 + mem[_8324]] <= 4294967296 and mem[_8324] + (32 * mem[_8324 + mem[_8324]]) + 32 <= return_data.size
                                mem[_8324 + ceil32(return_data.size)] = mem[_8324 + mem[_8324]]
                                _8404 = mem[_8324 + _8360]
                                s = 0
                                while s < 32 * _8404:
                                    mem[s + _8324 + ceil32(return_data.size) + 32] = mem[s + _8324 + _8360 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _8404) + _8324 + ceil32(return_data.size) + 32
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    continue 
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7248 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7248]
                                    mem[_7248 + 32] = stor8
                                    require 1 < mem[_7248]
                                    mem[_7248 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7248]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7248 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7248 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7248 + 132] = 0
                                    mem[_7248 + 196] = msg.sender
                                    mem[_7248 + 228] = block.timestamp
                                    mem[_7248 + 164] = 160
                                    mem[_7248 + 260] = mem[_7248]
                                    mem[_7248 + 292 len floor32(mem[_7248])] = mem[_7248 + 32 len floor32(mem[_7248])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7248 + 260 len (32 * mem[_7248]) + 32]
                                else:
                                    _7250 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7250]
                                    mem[_7250 + 32] = stor8
                                    require 1 < mem[_7250]
                                    mem[_7250 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7250]
                                    mem[_7250 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7250]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7250 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7250 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7250 + 164] = 0
                                    mem[_7250 + 228] = msg.sender
                                    mem[_7250 + 260] = block.timestamp
                                    mem[_7250 + 196] = 160
                                    mem[_7250 + 292] = mem[_7250]
                                    mem[_7250 + 324 len floor32(mem[_7250])] = mem[_7250 + 32 len floor32(mem[_7250])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7250 + 292 len (32 * mem[_7250]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                    else:
                        stor18 = stor17
                        if uint8(stor9.field_168):
                            idx = 0
                            s = stor5
                            while idx < stor18:
                                _7117 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = mem[96]
                                _7119 = mem[96]
                                t = 0
                                while t < 32 * _7119:
                                    mem[t + mem[64] + 100] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len (32 * _7119) + _7117 + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8327 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8366 = mem[_8327]
                                require mem[_8327] <= 4294967296
                                require mem[_8327] + 32 <= return_data.size
                                require mem[_8327 + mem[_8327]] <= 4294967296 and mem[_8327] + (32 * mem[_8327 + mem[_8327]]) + 32 <= return_data.size
                                mem[_8327 + ceil32(return_data.size)] = mem[_8327 + mem[_8327]]
                                _8407 = mem[_8327 + _8366]
                                t = 0
                                while t < 32 * _8407:
                                    mem[t + _8327 + ceil32(return_data.size) + 32] = mem[t + _8327 + _8366 + 32]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _8407) + _8327 + ceil32(return_data.size) + 32
                                require 0 < mem[_8327 + ceil32(return_data.size)]
                                _8775 = mem[_8327 + ceil32(return_data.size) + 32]
                                if mem[_8327 + ceil32(return_data.size) + 32] <= uint256(stor4.field_0):
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 36] = s
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 100] = stor21[stor20].field_0
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 132] = block.timestamp
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 68] = 128
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + (32 * _8407) + _8327 + ceil32(return_data.size) + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args s, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 164 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9148 = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32] <= 4294967296 and mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + (32 * mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]) + 32 <= return_data.size
                                    mem[(32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, s) >> 32 + 32]
                                    _9182 = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + _9148 + 32]
                                    t = 0
                                    while t < 32 * _9182:
                                        mem[t + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _8407) + _8327 + ceil32(return_data.size) + _9148 + 64]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _9182) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64
                                    uint256(stor4.field_0) -= _8775
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                else:
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 36] = uint256(stor4.field_0)
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 68] = 64
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 100] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _8407) + _8327 + ceil32(return_data.size) + 132] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor4.field_0), 64, mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 100 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 32
                                    require return_data.size >= 32
                                    _9150 = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
                                    require mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32] <= 4294967296 and mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]) + 32 <= return_data.size
                                    mem[(32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + mem[(32 * _8407) + _8327 + ceil32(return_data.size) + 32 len 4], Mask(224, 0, stor4.field_32) + 32]
                                    _9183 = mem[(32 * _8407) + _8327 + ceil32(return_data.size) + _9150 + 32]
                                    s = 0
                                    while s < 32 * _9183:
                                        mem[s + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _8407) + _8327 + ceil32(return_data.size) + _9150 + 64]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64
                                    require 1 < mem[(32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 32]
                                    _9343 = mem[(32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 96]
                                    require stor20 < stor21.length
                                    mem[0] = 21
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 68] = _9343
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 132] = stor21[stor20].field_0
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 164] = block.timestamp
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 100] = 128
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 196] = mem[96]
                                    s = 0
                                    while s < 32 * mem[96]:
                                        mem[s + (32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 228] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args _9343, 128, stor21[stor20].field_0, block.timestamp, mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 196 len (32 * mem[96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _9183) + (32 * _8407) + _8327 + (4 * ceil32(return_data.size)) + 64
                                    require return_data.size >= 32
                                    _9478 = mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32
                                    require mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 <= 4294967296
                                    require mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 + 64] <= 4294967296 and mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 + (32 * mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 + 64]) + 32 <= return_data.size
                                    mem[(32 * _9183) + (32 * _8407) + _8327 + (4 * ceil32(return_data.size)) + 64] = mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + 64 len 4], Mask(224, 32, _9343) >> 32 + 64]
                                    _9495 = mem[(32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + _9478 + 64]
                                    s = 0
                                    while s < 32 * _9495:
                                        mem[s + (32 * _9183) + (32 * _8407) + _8327 + (4 * ceil32(return_data.size)) + 96] = mem[s + (32 * _9183) + (32 * _8407) + _8327 + (2 * ceil32(return_data.size)) + _9478 + 96]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _9495) + (32 * _9183) + (32 * _8407) + _8327 + (4 * ceil32(return_data.size)) + 96
                                    uint256(stor4.field_0) -= _8775
                                    if uint8(stor9.field_160):
                                        stor20++
                                    stor17--
                                    if gas_remaining >= 100000:
                                        idx = idx + 1
                                        s = _9343
                                        continue 
                                ('lt', 'gas', 100000)
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7264 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7264]
                                    mem[_7264 + 32] = stor8
                                    require 1 < mem[_7264]
                                    mem[_7264 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7264]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7264 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7264 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7264 + 132] = 0
                                    mem[_7264 + 196] = msg.sender
                                    mem[_7264 + 228] = block.timestamp
                                    mem[_7264 + 164] = 160
                                    mem[_7264 + 260] = mem[_7264]
                                    mem[_7264 + 292 len floor32(mem[_7264])] = mem[_7264 + 32 len floor32(mem[_7264])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7264 + 260 len (32 * mem[_7264]) + 32]
                                else:
                                    _7266 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7266]
                                    mem[_7266 + 32] = stor8
                                    require 1 < mem[_7266]
                                    mem[_7266 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7266]
                                    mem[_7266 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7266]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7266 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7266 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7266 + 164] = 0
                                    mem[_7266 + 228] = msg.sender
                                    mem[_7266 + 260] = block.timestamp
                                    mem[_7266 + 196] = 160
                                    mem[_7266 + 292] = mem[_7266]
                                    mem[_7266 + 324 len floor32(mem[_7266])] = mem[_7266 + 32 len floor32(mem[_7266])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7266 + 292 len (32 * mem[_7266]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                        else:
                            require stor18
                            idx = 0
                            while idx < stor18:
                                require stor20 < stor21.length
                                mem[0] = 21
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = stor21[stor20].field_0
                                mem[mem[64] + 100] = block.timestamp
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 164] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) / stor18 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor21[stor20].field_0, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8326 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8364 = mem[_8326]
                                require mem[_8326] <= 4294967296
                                require mem[_8326] + 32 <= return_data.size
                                require mem[_8326 + mem[_8326]] <= 4294967296 and mem[_8326] + (32 * mem[_8326 + mem[_8326]]) + 32 <= return_data.size
                                mem[_8326 + ceil32(return_data.size)] = mem[_8326 + mem[_8326]]
                                _8406 = mem[_8326 + _8364]
                                s = 0
                                while s < 32 * _8406:
                                    mem[s + _8326 + ceil32(return_data.size) + 32] = mem[s + _8326 + _8364 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _8406) + _8326 + ceil32(return_data.size) + 32
                                if uint8(stor9.field_160):
                                    stor20++
                                stor17--
                                if gas_remaining >= 100000:
                                    idx = idx + 1
                                    continue 
                                stor19--
                            if uint8(stor9.field_176):
                                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(stor9.field_0):
                                    _7258 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_7258]
                                    mem[_7258 + 32] = stor8
                                    require 1 < mem[_7258]
                                    mem[_7258 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7258]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7258 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7258 + 100] = ext_call.return_data[0] / 10^6
                                    mem[_7258 + 132] = 0
                                    mem[_7258 + 196] = msg.sender
                                    mem[_7258 + 228] = block.timestamp
                                    mem[_7258 + 164] = 160
                                    mem[_7258 + 260] = mem[_7258]
                                    mem[_7258 + 292 len floor32(mem[_7258])] = mem[_7258 + 32 len floor32(mem[_7258])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7258 + 260 len (32 * mem[_7258]) + 32]
                                else:
                                    _7260 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    require mem[_7260]
                                    mem[_7260 + 32] = stor8
                                    require 1 < mem[_7260]
                                    mem[_7260 + 64] = address(stor9.field_0)
                                    require 2 < mem[_7260]
                                    mem[_7260 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require ext_code.size(stor8)
                                    staticcall stor8.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 0 < mem[_7260]
                                    require ext_code.size(stor8)
                                    call stor8.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_7260 + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_7260 + 132] = ext_call.return_data[0] / 10^6
                                    mem[_7260 + 164] = 0
                                    mem[_7260 + 228] = msg.sender
                                    mem[_7260 + 260] = block.timestamp
                                    mem[_7260 + 196] = 160
                                    mem[_7260 + 292] = mem[_7260]
                                    mem[_7260 + 324 len floor32(mem[_7260])] = mem[_7260 + 32 len floor32(mem[_7260])]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] / 10^6, 0, 160, msg.sender, block.timestamp, mem[_7260 + 292 len (32 * mem[_7260]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor9.field_176) = 0
                    stor19--
}



}
