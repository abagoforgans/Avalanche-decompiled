contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
address operatorAddress;
array of struct stor2;
array of struct stor3;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
uint8 stor9;
bool stor10;
uint256 stor10;
uint256 stor10; offset 1
uint256 maxTxAmount;
bool stor11;
uint256 stor11;
uint256 stor11; offset 1
uint256 maxWalletAmount;
uint16 sub_2278ee44;
address stor12; offset 16
address dexRouterAddress;
uint8 stor14; offset 160
address lpPairAddress;

function dexRouter() {
    return dexRouterAddress
}

function sub_0c9e7278(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function sub_2278ee44(?) {
    return sub_2278ee44
}

function decimals() {
    return decimals
}

function lpPair() {
    return lpPairAddress
}

function tradingEnabled() {
    return bool(stor9)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function maxTxAmount() {
    return maxTxAmount
}

function maxWalletAmount() {
    return maxWalletAmount
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getOperator() {
    return operatorAddress
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function recoverEth() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOperatorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    if not arg1:
        revert with 0, 'Account == 0/dEaD'
    if arg1 == 57005:
        revert with 0, 'Account == 0/dEaD'
    operatorAddress = arg1
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor12.0xfe575a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_e852b2c9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    if uint16(arg1) > 10000:
        revert with 0, 'Overflow'
    sub_2278ee44 = uint16(arg1)
    require ext_code.size(stor12)
    call stor12.0xa6306692 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3ea7f487(?) {
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    if maxTxAmount > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    bool(stor10.field_0) = 0
    uint255(stor10.field_1) = uint255(stor10.field_0)
    if maxWalletAmount > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    bool(stor11.field_0) = 0
    uint255(stor11.field_1) = uint255(stor11.field_0)
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    if stor9:
        revert with 0, 'tradingEnabled =/= False'
    if balanceOf[this.address] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
        revert with 0, 17
    call dexRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, uint32(this.address), 9 * balanceOf[this.address] / 10, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor12)
    call stor12.0x78e50f1c with:
         gas gas_remaining wei
        args sub_2278ee44, lpPairAddress
    stor9 = 1
}

function sub_fe98e00c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e1baae1f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0xe1baae1f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 64
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + 197
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor12)
    call stor12.0xe1baae1f with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 197 len 32 * ('cd', 4).length]), bool(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_59f48a7c(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Caller =/= Operator'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Amount > Balance'
    mem[96] = 2
    staticcall dexRouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = owner
    mem[ceil32(return_data.size) + 292] = block.timestamp
    call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, owner, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
        revert with 0, 65
    require mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 <= return_data.size
}

function buyAndBurn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Caller =/= Operator'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Amount > Balance'
    mem[96] = 2
    staticcall dexRouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = 57005
    mem[ceil32(return_data.size) + 292] = block.timestamp
    call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
        revert with 0, 65
    require mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 <= return_data.size
}

function sub_5788ddcf(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Caller =/= Operator'
    if eth.balance(this.address) / 2 < arg1:
        revert with 0, 'Amount > Balance'
    mem[0] = this.address
    mem[32] = 6
    mem[96] = 2
    staticcall dexRouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp
    call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
        revert with 0, 65
    require mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 <= return_data.size
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 17
    call dexRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value arg1 wei
         gas gas_remaining wei
        args this.address, 0, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Amount > Allowance'
    if not arg1:
        revert with 0, 'Sender == 0x0'
    if not arg2:
        revert with 0, 'Recipient == 0x0'
    if stor8[address(arg1)]:
        if this.address == arg1:
            if lpPairAddress == arg1:
                if stor8[address(arg1)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg1:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if stor8[address(arg1)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg1:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg2:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
        else:
            if lpPairAddress == arg1:
                if stor8[address(arg1)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg2:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if stor8[address(arg1)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg2:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg2:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
    else:
        if this.address == arg1:
            if lpPairAddress == arg1:
                if stor8[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg1:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if stor8[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg1:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg2:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
        else:
            if lpPairAddress == arg1:
                if stor8[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg2:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if stor8[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if this.address == arg2:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg2:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = arg1
                        mem[132] = arg2
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg3 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg2:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg3 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == arg1:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg3
                        require return_data.size >= 32
                        if arg3 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], arg1, this.address);
                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Sender == 0x0'
    if not arg1:
        revert with 0, 'Recipient == 0x0'
    if stor8[address(msg.sender)]:
        if this.address == msg.sender:
            if lpPairAddress == msg.sender:
                if stor8[address(msg.sender)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == msg.sender:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != msg.sender:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
            else:
                if stor8[address(msg.sender)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == msg.sender:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
        else:
            if lpPairAddress == msg.sender:
                if stor8[address(msg.sender)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == arg1:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != msg.sender:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
            else:
                if stor8[address(msg.sender)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == arg1:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
    else:
        if this.address == msg.sender:
            if lpPairAddress == msg.sender:
                if stor8[address(arg1)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == msg.sender:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != msg.sender:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
            else:
                if stor8[address(arg1)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == msg.sender:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
        else:
            if lpPairAddress == msg.sender:
                if stor8[address(arg1)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == arg1:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != msg.sender:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
            else:
                if stor8[address(arg1)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Amount > Balance'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if this.address == arg1:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Amount > Balance'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor9:
                            revert with 0, 'Transfer =/= Allow'
                        if lpPairAddress != arg1:
                            revert with 0, 'Transfer =/= Allow'
                        mem[100] = msg.sender
                        mem[132] = arg1
                        call stor12.0xd2ad07fb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Rejected/Blacklisted'
                        if totalSupply and maxTxAmount > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTxAmount / 10000:
                            revert with 0, 'Max Transfer Reject'
                        if lpPairAddress != arg1:
                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > totalSupply * maxWalletAmount / 10000:
                                revert with 0, 'Max Wallet Reject'
                        if arg2 > balanceOf[this.address]:
                            staticcall stor12.0x3e3ab282 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if lpPairAddress == msg.sender:
                                staticcall stor12.0x3e3ab282 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor14:
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor14 = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor14 = 0
                                    staticcall stor12.0x3e3ab282 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg2
                        require return_data.size >= 32
                        if arg2 < ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        if balanceOf[address(arg1)] > !(arg2 - ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ext_call.return_data[0]
                        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
    return 1
}



}
