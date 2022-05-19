contract main {




// =====================  Runtime code  =====================


#
#  - sub_5e7b9490(?)
#
address stor0;
mapping of uint256 balanceOf;
address routerAddress;
uint256 stor3;
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

function sub_7308da23(?) {
    return address(stor9.field_0), 
           stor4,
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
    stor4 = arg2
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



}
