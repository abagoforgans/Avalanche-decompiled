contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
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
uint8 tradingEnabled;
bool stor10;
uint256 stor10;
uint256 stor10; offset 1
uint256 maxTxAmount;
bool stor11;
uint256 stor11;
uint256 stor11; offset 1
uint256 maxWalletAmount;
uint16 sub_2278ee44;
address stor12;
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
    return bool(tradingEnabled)
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
    staticcall address(stor12.field_16).0xfe575a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_b670f968(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(stor12.field_16).0xb670f968 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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

function sub_e852b2c9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller =/= Owner'
    if uint16(arg1) > 10000:
        revert with 0, 'Overflow'
    sub_2278ee44 = uint16(arg1)
    require ext_code.size(address(stor12.field_16))
    call address(stor12.field_16).0xa6306692 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if tradingEnabled:
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
    require ext_code.size(address(stor12.field_16))
    call address(stor12.field_16).0x78e50f1c with:
         gas gas_remaining wei
        args sub_2278ee44, lpPairAddress
    tradingEnabled = 1
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

function sub_694e5955(?) {
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
    mem[ceil32(32 * ('cd', 4).length) + 97] = 'iNYU'
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
    require ext_code.size(address(stor12.field_16))
    call address(stor12.field_16).'iNYU' with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 197 len 32 * ('cd', 4).length]), bool(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(address(stor12.field_16))
    call address(stor12.field_16).0xe1baae1f with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 197 len 32 * ('cd', 4).length]), bool(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyAndBurn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Caller =/= Operator'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Amount > Balance'
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

function sub_121cf4ad(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Caller =/= Operator'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Amount > Balance'
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
    mem[ceil32(return_data.size) + 260] = address(stor12.field_16)
    mem[ceil32(return_data.size) + 292] = block.timestamp
    call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(stor12.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
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
            if lpPairAddress != arg1:
                if dexRouterAddress != arg1:
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
                            if dexRouterAddress == arg1:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
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
                            if lpPairAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if dexRouterAddress == arg2:
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
                            if dexRouterAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
                else:
                    if dexRouterAddress != arg1:
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
                                if dexRouterAddress == arg1:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
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
                                if lpPairAddress == arg2:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
                                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
        else:
            if lpPairAddress != arg1:
                if dexRouterAddress != arg1:
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
                            if dexRouterAddress == arg1:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
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
                            if lpPairAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if dexRouterAddress == arg2:
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
                            if dexRouterAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
                else:
                    if dexRouterAddress != arg1:
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
                                if dexRouterAddress == arg1:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
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
                                if lpPairAddress == arg2:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
                                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
    else:
        if this.address == arg1:
            if lpPairAddress != arg1:
                if dexRouterAddress != arg1:
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
                            if dexRouterAddress == arg1:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
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
                            if lpPairAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if dexRouterAddress == arg2:
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
                            if dexRouterAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
                else:
                    if dexRouterAddress != arg1:
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
                                if dexRouterAddress == arg1:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
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
                                if lpPairAddress == arg2:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
                                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
        else:
            if lpPairAddress != arg1:
                if dexRouterAddress != arg1:
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
                            if dexRouterAddress == arg1:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
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
                            if lpPairAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
            else:
                if dexRouterAddress == arg2:
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
                            if dexRouterAddress == arg2:
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
                                if not tradingEnabled:
                                    revert with 0, 'Transfer =/= Allow'
                                if lpPairAddress != arg1:
                                    if lpPairAddress != arg2:
                                        revert with 0, 'Transfer =/= Allow'
                                mem[100] = arg1
                                mem[132] = arg2
                                call address(stor12.field_16).0xd2ad07fb with:
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
                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                            gas gas_remaining wei
                                           args address(arg1), address(arg2), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lpPairAddress == arg1:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor14:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
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
                                if arg3 - ext_call.return_data[0]:
                                    if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                    emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
                else:
                    if dexRouterAddress != arg1:
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
                                if dexRouterAddress == arg1:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
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
                                if lpPairAddress == arg2:
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
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != arg1:
                                        if lpPairAddress != arg2:
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[100] = arg1
                                    mem[132] = arg2
                                    call address(stor12.field_16).0xd2ad07fb with:
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
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(arg1), address(arg2), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == arg1:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(arg1), address(arg2), arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(arg1), address(arg2), arg3
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
                                    if arg3 - ext_call.return_data[0]:
                                        if balanceOf[address(arg2)] > !(arg3 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ext_call.return_data[0]
                                        emit Transfer((arg3 - ext_call.return_data[0]), arg1, arg2);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x0c9e7278(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
                    if dexRouter() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return dexRouterAddress
                    require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require address(cd[4])
                    allowance[msg.sender][address(cd[4])] = cd[36]
                    emit Approval(cd[36], msg.sender, address(cd[4]));
                    return 1
                require not msg.value
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor2.length):
                        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2.length):
                            if 31 < uint255(stor2.length) * 0.5:
                                mem[160] = uint256(stor2.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor2.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                            mem[160] = 256 * stor2.length.field_8
                    else:
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 0, 34
                        if stor2.length.field_1:
                            if 31 < stor2.length.field_1:
                                mem[160] = uint256(stor2.field_0)
                                idx = 160
                                s = 0
                                while stor2.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor2[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                            mem[160] = 256 * stor2.length.field_8
                    mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[160 len ceil32(uint255(stor2.length) * 0.5)]
                    if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
                        mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor2.length):
                    if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2.length):
                        if 31 < uint255(stor2.length) * 0.5:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor2.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                        mem[160] = 256 * stor2.length.field_8
                else:
                    if bool(stor2.length) == stor2.length.field_1 < 32:
                        revert with 0, 34
                    if stor2.length.field_1:
                        if 31 < stor2.length.field_1:
                            mem[160] = uint256(stor2.field_0)
                            idx = 160
                            s = 0
                            while stor2.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor2[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                        mem[160] = 256 * stor2.length.field_8
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[160 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
            if unknown_0x0c9e7278(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor8[address(cd[4])])
            if uint32(call.func_hash) >> 224 != unknown_0x121cf4ad(?????):
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x2278ee44(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_2278ee44
            require not msg.value
            require calldata.size - 4 >= 32
            if operatorAddress != msg.sender:
                revert with 0, 'Caller =/= Operator'
            if eth.balance(this.address) < cd[4]:
                revert with 0, 'Amount > Balance'
            staticcall dexRouterAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[192] = this.address
            mem[ceil32(return_data.size) + 224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 0
            mem[ceil32(return_data.size) + 260] = 128
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = 160
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = address(stor12.field_16)
            mem[ceil32(return_data.size) + 324] = block.timestamp
            call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[4] wei
                 gas gas_remaining wei
                args 0, 128, address(stor12.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307():
                revert with 0, 65
            require mem[ceil32(return_data.size) + 224 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 32 <= return_data.size
        if unknown_0x452ed4f1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x452ed4f1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return lpPairAddress
            if unknown_0x4a6a42d8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Caller =/= Owner'
                if not address(cd[4]):
                    revert with 0, 'Account == 0/dEaD'
                if address(cd[4]) == 57005:
                    revert with 0, 'Account == 0/dEaD'
                operatorAddress = address(cd[4])
            else:
                if unknown_0x4ada218b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(tradingEnabled)
                require unknown_0x694e5955(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require calldata.size > cd[4] + 35
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = 160
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
                mem[ceil32(32 * ('cd', 4).length) + 129] = 'iNYU'
                mem[ceil32(32 * ('cd', 4).length) + 133] = 64
                idx = 0
                s = 160
                t = ceil32(32 * ('cd', 4).length) + 229
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor12.field_16))
                call address(stor12.field_16).'iNYU' with:
                     gas gas_remaining wei
                    args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 229 len 32 * ('cd', 4).length]), bool(cd[36])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if uint32(call.func_hash) >> 224 != unknown_0x34e6436c(?????):
                require unknown_0x3ea7f487(?????) == uint32(call.func_hash) >> 224
                require not msg.value
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
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                if operatorAddress != msg.sender:
                    revert with 0, 'Caller =/= Operator'
                if eth.balance(this.address) < cd[4]:
                    revert with 0, 'Amount > Balance'
                staticcall dexRouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[192] = this.address
                mem[ceil32(return_data.size) + 224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = 0
                mem[ceil32(return_data.size) + 260] = 128
                mem[ceil32(return_data.size) + 356] = 2
                idx = 0
                s = 160
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 292] = 57005
                mem[ceil32(return_data.size) + 324] = block.timestamp
                call dexRouterAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value cd[4] wei
                     gas gas_remaining wei
                    args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307():
                    revert with 0, 65
                require mem[ceil32(return_data.size) + 224 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 32 <= return_data.size
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] == address(cd[4])
        require cd[36] == address(cd[36])
        if cd[68] > allowance[address(cd[4])][msg.sender]:
            revert with 0, 'Amount > Allowance'
        if not address(cd[4]):
            revert with 0, 'Sender == 0x0'
        if not address(cd[36]):
            revert with 0, 'Recipient == 0x0'
        if stor8[address(cd[4])]:
            if this.address == address(cd[4]):
                if lpPairAddress != address(cd[4]):
                    if dexRouterAddress != address(cd[4]):
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if lpPairAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                else:
                    if dexRouterAddress == address(cd[36]):
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if dexRouterAddress != address(cd[4]):
                            if stor8[address(cd[4])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if dexRouterAddress == address(cd[4]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                        else:
                            if stor8[address(cd[4])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if lpPairAddress == address(cd[36]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
            else:
                if lpPairAddress != address(cd[4]):
                    if dexRouterAddress != address(cd[4]):
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if lpPairAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                else:
                    if dexRouterAddress == address(cd[36]):
                        if stor8[address(cd[4])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if dexRouterAddress != address(cd[4]):
                            if stor8[address(cd[4])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if dexRouterAddress == address(cd[4]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                        else:
                            if stor8[address(cd[4])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if lpPairAddress == address(cd[36]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
        else:
            if this.address == address(cd[4]):
                if lpPairAddress != address(cd[4]):
                    if dexRouterAddress != address(cd[4]):
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if lpPairAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                else:
                    if dexRouterAddress == address(cd[36]):
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if dexRouterAddress != address(cd[4]):
                            if stor8[address(cd[36])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if dexRouterAddress == address(cd[4]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                        else:
                            if stor8[address(cd[36])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if lpPairAddress == address(cd[36]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
            else:
                if lpPairAddress != address(cd[4]):
                    if dexRouterAddress != address(cd[4]):
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if lpPairAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                else:
                    if dexRouterAddress == address(cd[36]):
                        if stor8[address(cd[36])]:
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if this.address == address(cd[36]):
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if dexRouterAddress == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != address(cd[4]):
                                        if lpPairAddress != address(cd[36]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = address(cd[4])
                                    mem[164] = address(cd[36])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[68] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[36]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[68] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args address(cd[4]), address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == address(cd[4]):
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                    require return_data.size >= 32
                                    if cd[68] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                    if cd[68] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                        emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                    else:
                        if dexRouterAddress != address(cd[4]):
                            if stor8[address(cd[36])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if dexRouterAddress == address(cd[4]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
                        else:
                            if stor8[address(cd[36])]:
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if this.address == address(cd[36]):
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if lpPairAddress == address(cd[36]):
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != address(cd[4]):
                                            if lpPairAddress != address(cd[36]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = address(cd[4])
                                        mem[164] = address(cd[36])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[68] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[36]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[68] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args address(cd[4]), address(cd[36]), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == address(cd[4]):
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args address(cd[4]), address(cd[36]), cd[68]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[68]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[68], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args address(cd[4]), address(cd[36]), cd[68]
                                        require return_data.size >= 32
                                        if cd[68] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], address(cd[4]), this.address);
                                        if cd[68] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[36])] > !(cd[68] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - ext_call.return_data[0]
                                            emit Transfer((cd[68] - ext_call.return_data[0]), address(cd[4]), address(cd[36]));
    else:
        if unknown_0xb670f968(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe7f43c68(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe7f43c68(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return operatorAddress
                if unknown_0xe852b2c9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == uint16(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Caller =/= Owner'
                    if uint16(cd[4]) > 10000:
                        revert with 0, 'Overflow'
                    sub_2278ee44 = uint16(cd[4])
                    require ext_code.size(address(stor12.field_16))
                    call address(stor12.field_16).0xa6306692 with:
                         gas gas_remaining wei
                        args uint16(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        staticcall address(stor12.field_16).0xfe575a87 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    require unknown_0xfe98e00c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = 160
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
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 172 len 20]] = uint8(bool(cd[36]))
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if unknown_0xb670f968(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    staticcall address(stor12.field_16).0xb670f968 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0xbcdb446b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Caller =/= Owner'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return allowance[address(cd[4])][address(cd[36])]
                    require unknown_0xe1baae1f(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = 160
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
                    mem[ceil32(32 * ('cd', 4).length) + 129] = 0xe1baae1f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 133] = 64
                    idx = 0
                    s = 160
                    t = ceil32(32 * ('cd', 4).length) + 229
                    while idx < ('cd', 4).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor12.field_16))
                    call address(stor12.field_16).0xe1baae1f with:
                         gas gas_remaining wei
                        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 229 len 32 * ('cd', 4).length]), bool(cd[36])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return balanceOf[address(cd[4])]
            if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x8a8c523c(?????):
                require unknown_0x8c0b5e22(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return maxTxAmount
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Caller =/= Owner'
            if tradingEnabled:
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
            require ext_code.size(address(stor12.field_16))
            call address(stor12.field_16).0x78e50f1c with:
                 gas gas_remaining wei
                args sub_2278ee44, lpPairAddress
            tradingEnabled = 1
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3.length):
                    if 31 < uint255(stor3.length) * 0.5:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if stor3.length.field_1:
                    if 31 < stor3.length.field_1:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0x9be65a60(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Caller =/= Owner'
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            require unknown_0xaa4bde28(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return maxWalletAmount
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if not msg.sender:
            revert with 0, 'Sender == 0x0'
        if not address(cd[4]):
            revert with 0, 'Recipient == 0x0'
        if stor8[address(msg.sender)]:
            if this.address == msg.sender:
                if lpPairAddress != msg.sender:
                    if dexRouterAddress != msg.sender:
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if lpPairAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                else:
                    if dexRouterAddress == address(cd[4]):
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if dexRouterAddress != msg.sender:
                            if stor8[address(msg.sender)]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if dexRouterAddress == msg.sender:
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                        else:
                            if stor8[address(msg.sender)]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if lpPairAddress == address(cd[4]):
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
            else:
                if lpPairAddress != msg.sender:
                    if dexRouterAddress != msg.sender:
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if lpPairAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                else:
                    if dexRouterAddress == address(cd[4]):
                        if stor8[address(msg.sender)]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if dexRouterAddress != msg.sender:
                            if stor8[address(msg.sender)]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if dexRouterAddress == msg.sender:
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                        else:
                            if stor8[address(msg.sender)]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if lpPairAddress == address(cd[4]):
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
        else:
            if this.address == msg.sender:
                if lpPairAddress != msg.sender:
                    if dexRouterAddress != msg.sender:
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if lpPairAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                else:
                    if dexRouterAddress == address(cd[4]):
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == msg.sender:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if dexRouterAddress != msg.sender:
                            if stor8[address(cd[4])]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if dexRouterAddress == msg.sender:
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                        else:
                            if stor8[address(cd[4])]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if lpPairAddress == address(cd[4]):
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
            else:
                if lpPairAddress != msg.sender:
                    if dexRouterAddress != msg.sender:
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == msg.sender:
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if lpPairAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                else:
                    if dexRouterAddress == address(cd[4]):
                        if stor8[address(cd[4])]:
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 'Amount > Balance'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if this.address == address(cd[4]):
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if dexRouterAddress == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not tradingEnabled:
                                        revert with 0, 'Transfer =/= Allow'
                                    if lpPairAddress != msg.sender:
                                        if lpPairAddress != address(cd[4]):
                                            revert with 0, 'Transfer =/= Allow'
                                    mem[132] = msg.sender
                                    mem[164] = address(cd[4])
                                    call address(stor12.field_16).0xd2ad07fb with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4])
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Rejected/Blacklisted'
                                    if totalSupply and maxTxAmount > -1 / totalSupply:
                                        revert with 0, 17
                                    if cd[36] > totalSupply * maxTxAmount / 10000:
                                        revert with 0, 'Max Transfer Reject'
                                    if lpPairAddress != address(cd[4]):
                                        if totalSupply and maxWalletAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                            revert with 0, 'Max Wallet Reject'
                                    if cd[36] > balanceOf[this.address]:
                                        staticcall address(stor12.field_16).0x8b338c5a with:
                                                gas gas_remaining wei
                                               args msg.sender, address(cd[4]), cd[36]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if lpPairAddress == msg.sender:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor14:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor14 = 1
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                staticcall dexRouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 160
                                                t = (2 * ceil32(return_data.size)) + 420
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(dexRouterAddress)
                                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor14 = 0
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                    require return_data.size >= 32
                                    if cd[36] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if cd[36] - ext_call.return_data[0]:
                                        if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                        emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                    else:
                        if dexRouterAddress != msg.sender:
                            if stor8[address(cd[4])]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if dexRouterAddress == msg.sender:
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
                        else:
                            if stor8[address(cd[4])]:
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Amount > Balance'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if this.address == address(cd[4]):
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Amount > Balance'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if lpPairAddress == address(cd[4]):
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Amount > Balance'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if not tradingEnabled:
                                            revert with 0, 'Transfer =/= Allow'
                                        if lpPairAddress != msg.sender:
                                            if lpPairAddress != address(cd[4]):
                                                revert with 0, 'Transfer =/= Allow'
                                        mem[132] = msg.sender
                                        mem[164] = address(cd[4])
                                        call address(stor12.field_16).0xd2ad07fb with:
                                             gas gas_remaining wei
                                            args msg.sender, address(cd[4])
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Rejected/Blacklisted'
                                        if totalSupply and maxTxAmount > -1 / totalSupply:
                                            revert with 0, 17
                                        if cd[36] > totalSupply * maxTxAmount / 10000:
                                            revert with 0, 'Max Transfer Reject'
                                        if lpPairAddress != address(cd[4]):
                                            if totalSupply and maxWalletAmount > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxWalletAmount / 10000:
                                                revert with 0, 'Max Wallet Reject'
                                        if cd[36] > balanceOf[this.address]:
                                            staticcall address(stor12.field_16).0x8b338c5a with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(cd[4]), cd[36]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if lpPairAddress == msg.sender:
                                                staticcall address(stor12.field_16).0x8b338c5a with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(cd[4]), cd[36]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor14:
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    stor14 = 1
                                                    mem[ceil32(return_data.size) + 128] = 2
                                                    mem[ceil32(return_data.size) + 160] = this.address
                                                    staticcall dexRouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = cd[36]
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 160
                                                    t = (2 * ceil32(return_data.size)) + 420
                                                    while idx < mem[ceil32(return_data.size) + 128]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                    require ext_code.size(dexRouterAddress)
                                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor14 = 0
                                                    staticcall address(stor12.field_16).0x8b338c5a with:
                                                            gas gas_remaining wei
                                                           args msg.sender, address(cd[4]), cd[36]
                                        require return_data.size >= 32
                                        if cd[36] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[this.address] += ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if cd[36] - ext_call.return_data[0]:
                                            if balanceOf[address(cd[4])] > !(cd[36] - ext_call.return_data[0]):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - ext_call.return_data[0]
                                            emit Transfer((cd[36] - ext_call.return_data[0]), msg.sender, address(cd[4]));
    return 1
}



}
