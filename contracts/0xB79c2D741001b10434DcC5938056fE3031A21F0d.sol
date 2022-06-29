contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f4ba7a1(?)
#  - sub_c3615cba(?)
#
const getBalance = eth.balance(this.address)


address zeusAddress;
address sub_27e9887bAddress;
address sub_c12f857fAddress;
address sub_49a34297Address;
address sub_d1dcc103Address;
address sub_3d97ba9cAddress;
uint256 sub_0cdea63d;
uint256 sub_718e6f6f;
uint256 sub_38ee2cb7;
uint256 sub_a24404b0;
uint256 sub_f5de189e;
address owner;
array of struct stor12;
mapping of uint8 stor13;

function sub_0cdea63d(?) {
    return sub_0cdea63d
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    return bool(stor13[address(arg1)])
}

function sub_27e9887b(?) {
    return sub_27e9887bAddress
}

function sub_38ee2cb7(?) {
    return sub_38ee2cb7
}

function sub_3d97ba9c(?) {
    return sub_3d97ba9cAddress
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_49a34297(?) {
    return sub_49a34297Address
}

function Zeus() {
    return zeusAddress
}

function sub_718e6f6f(?) {
    return sub_718e6f6f
}

function owner() {
    return owner
}

function sub_a24404b0(?) {
    return sub_a24404b0
}

function sub_c12f857f(?) {
    return sub_c12f857fAddress
}

function sub_d1dcc103(?) {
    return sub_d1dcc103Address
}

function sub_f5de189e(?) {
    return sub_f5de189e
}

function sub_9bd7196e(?) {
    require calldata.size - 4 >= 32
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    sub_0cdea63d = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    owner = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    stor13[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    stor13[address(arg1)] = 0
}

function setNextContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    sub_d1dcc103Address = arg1
}

function sub_97bb9243(?) {
    require calldata.size - 4 >= 96
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    sub_718e6f6f = arg1
    sub_38ee2cb7 = arg2
    sub_a24404b0 = arg3
}

function sub_df5f6eff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    sub_3d97ba9cAddress = address(arg1)
}

function cashoutAll() {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    require ext_code.size(zeusAddress)
    call zeusAddress.0x54557973 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawNative() {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lastIndexProcessed() {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress.0x72476577 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5cf3076f(?) {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_01ef66ff(?) {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function canClaim() {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function sub_45e36f9f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c79add2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    call zeusAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ebf75adb(?) {
    require calldata.size - 4 >= 32
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    idx = 0
    while idx < arg1:
        mem[96] = 0x8743ef6d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(zeusAddress)
        call zeusAddress.publiDistriRewards() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_50f6438d(?) {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall zeusAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call zeusAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f1952db8(?) {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor12.length):
            call sub_3d97ba9cAddress.0xd3aed10f with:
                 gas gas_remaining wei
                args 0, 0, sub_f5de189e, 128, owner, 2 * Mask(256, -1, stor12.length), Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                call sub_3d97ba9cAddress.0xd3aed10f with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor12.length) * 0.5:
                    mem[idx + 260] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call sub_3d97ba9cAddress.0xd3aed10f with:
                     gas gas_remaining wei
                    args 0, 0, sub_f5de189e, 128, owner, 2 * Mask(256, -1, stor12.length), mem[260 len ceil32(uint255(stor12.length) * 0.5)]
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor12.length):
            call sub_3d97ba9cAddress.0xd3aed10f with:
                 gas gas_remaining wei
                args 0, 0, sub_f5de189e, 128, owner, stor12.length % 128, Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                call sub_3d97ba9cAddress.0xd3aed10f with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 260] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call sub_3d97ba9cAddress.0xd3aed10f with:
                     gas gas_remaining wei
                    args 0, 0, sub_f5de189e, 128, owner, stor12.length % 128, mem[260 len ceil32(stor12.length.field_1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_d1dcc103Address = ext_call.return_data[12 len 20]
}

function sub_be6f6414(?) {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function swapIn() {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    mem[96] = 2
    staticcall sub_c12f857fAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    if 1000 < sub_38ee2cb7:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = eth.balance(this.address)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall sub_c12f857fAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args eth.balance(this.address), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _29 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    require (32 * _30) + _29 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _30)] = mem[ceil32(return_data.size) + _29 + 224 len ceil32(32 * _30)]
    if 1 >= _30:
        revert with 0, 50
    _41 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and -sub_38ee2cb7 + 1000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    if not sub_a24404b0:
        revert with 0, 18
    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = (1000 * _41) - (sub_38ee2cb7 * _41) / sub_a24404b0
    mem[mem[64] + 36] = 128
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_c12f857fAddress)
    call sub_c12f857fAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args (1000 * _41) - (sub_38ee2cb7 * _41) / sub_a24404b0, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    mem[96] = 2
    staticcall sub_c12f857fAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    if 1000 < sub_38ee2cb7:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = eth.balance(this.address)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall sub_c12f857fAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args eth.balance(this.address), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _29 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _30 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    require (32 * _30) + _29 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _30)] = mem[ceil32(return_data.size) + _29 + 224 len ceil32(32 * _30)]
    if 1 >= _30:
        revert with 0, 50
    _41 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and -sub_38ee2cb7 + 1000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    if not sub_a24404b0:
        revert with 0, 18
    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = (1000 * _41) - (sub_38ee2cb7 * _41) / sub_a24404b0
    mem[mem[64] + 36] = 128
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_c12f857fAddress)
    call sub_c12f857fAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args (1000 * _41) - (sub_38ee2cb7 * _41) / sub_a24404b0, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapOut() {
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    mem[96] = 2
    mem[128] = this.address
    staticcall sub_c12f857fAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = this.address
    staticcall zeusAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = sub_c12f857fAddress
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    call zeusAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_c12f857fAddress, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1000 < sub_718e6f6f:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall sub_c12f857fAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _37 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _38 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _38
    require (32 * _38) + _37 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _38)] = mem[(4 * ceil32(return_data.size)) + _37 + 224 len ceil32(32 * _38)]
    if 1 >= _38:
        revert with 0, 50
    _49 = mem[(6 * ceil32(return_data.size)) + 256]
    if mem[(6 * ceil32(return_data.size)) + 256] and -sub_718e6f6f + 1000 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    if not sub_a24404b0:
        revert with 0, 18
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = (1000 * _49) - (sub_718e6f6f * _49) / sub_a24404b0
    mem[mem[64] + 68] = 160
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_c12f857fAddress)
    call sub_c12f857fAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], (1000 * _49) - (sub_718e6f6f * _49) / sub_a24404b0, Array(len=2, data=mem[mem[64] + 196 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_422e2fc0(?) {
    mem[100] = this.address
    staticcall sub_27e9887bAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor12.length):
                mem[ceil32(return_data.size) + 192] = Mask(248, 8, stor12.length)
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 192] = sub_f5de189e
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 225] = 32
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 257] = mem[ceil32(return_data.size) + 160]
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
                if ceil32(mem[ceil32(return_data.size) + 160]) > mem[ceil32(return_data.size) + 160]:
                    mem[mem[ceil32(return_data.size) + 160] + ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(return_data.size) + 160], data=mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289 len ceil32(mem[ceil32(return_data.size) + 160])]), 
            if bool(stor12.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor12.length) * 0.5:
                    mem[idx + ceil32(return_data.size) + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 192] = sub_f5de189e
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 225] = 32
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 257] = mem[ceil32(return_data.size) + 160]
                mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
                if ceil32(mem[ceil32(return_data.size) + 160]) > mem[ceil32(return_data.size) + 160]:
                    mem[mem[ceil32(return_data.size) + 160] + ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(return_data.size) + 160], data=mem[ceil32(return_data.size) + (uint255(stor12.length) * 0.5) + 289 len ceil32(mem[ceil32(return_data.size) + 160])]), 
            mem[0] = sub_f5de189e
            mem[32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[64] = 33
            mem[33] = 32
            _122 = mem[0, Mask(248, 0, ceil32(return_data.size) + 160)]
            mem[65] = mem[0, Mask(248, 0, ceil32(return_data.size) + 160)]
            mem[97 len ceil32(_122)] = mem[0, Mask(248, 0, ceil32(return_data.size) + 160) + 32 len ceil32(_122)]
            if ceil32(_122) > _122:
                mem[_122 + 97] = 0
            return memory
              from 32, mem[65 len 31]
               len ceil32(_122) + -32, mem[65 len 31] + 97
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor12.length):
            mem[ceil32(return_data.size) + 192] = Mask(248, 8, stor12.length)
            mem[ceil32(return_data.size) + stor12.length.field_1 + 192] = sub_f5de189e
            mem[ceil32(return_data.size) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + stor12.length.field_1 + 225] = 32
            mem[ceil32(return_data.size) + stor12.length.field_1 + 257] = mem[ceil32(return_data.size) + 160]
            mem[ceil32(return_data.size) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
            if ceil32(mem[ceil32(return_data.size) + 160]) > mem[ceil32(return_data.size) + 160]:
                mem[mem[ceil32(return_data.size) + 160] + ceil32(return_data.size) + stor12.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(return_data.size) + 160], data=mem[ceil32(return_data.size) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(return_data.size) + 160])]), 
        if bool(stor12.length) == 1:
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[idx + ceil32(return_data.size) + 192] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + stor12.length.field_1 + 192] = sub_f5de189e
            mem[ceil32(return_data.size) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + stor12.length.field_1 + 225] = 32
            mem[ceil32(return_data.size) + stor12.length.field_1 + 257] = mem[ceil32(return_data.size) + 160]
            mem[ceil32(return_data.size) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
            if ceil32(mem[ceil32(return_data.size) + 160]) > mem[ceil32(return_data.size) + 160]:
                mem[mem[ceil32(return_data.size) + 160] + ceil32(return_data.size) + stor12.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(return_data.size) + 160], data=mem[ceil32(return_data.size) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(return_data.size) + 160])]), 
        mem[0] = sub_f5de189e
        mem[32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = 33
        mem[33] = 32
        _126 = mem[0, Mask(248, 0, ceil32(return_data.size) + 160)]
        mem[65] = mem[0, Mask(248, 0, ceil32(return_data.size) + 160)]
        mem[97 len ceil32(_126)] = mem[0, Mask(248, 0, ceil32(return_data.size) + 160) + 32 len ceil32(_126)]
        if ceil32(_126) > _126:
            mem[_126 + 97] = 0
        return memory
          from 32, mem[65 len 31]
           len ceil32(_126) + -32, mem[65 len 31] + 97
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = s
    if not s:
        t = s
        idx = ext_call.return_data[0]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor12.length):
                mem[ceil32(return_data.size) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
                mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 32
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                    mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
            if bool(stor12.length) == 1:
                idx = 0
                t = 0
                while idx < uint255(stor12.length) * 0.5:
                    mem[idx + ceil32(return_data.size) + ceil32(s) + 160] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 32
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
                mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                    mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
            _398 = mem[ceil32(return_data.size) + 96]
            mem[32 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[64] = _398 + 32
            mem[_398 + 32] = 32
            if ceil32(_398) <= _398:
                _638 = mem[ceil32(return_data.size) + ceil32(s) + 128]
                mem[_398 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
                mem[_398 + 96 len ceil32(_638)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _398 + 96] = 0
                return 32, mem[_398 + 64 len ceil32(_638) + 32]
            _639 = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_398 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_398 + 96 len ceil32(_639)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _398 + 96] = 0
            return 32, mem[_398 + 64 len ceil32(_639) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor12.length):
            mem[ceil32(return_data.size) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
            mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
            mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192] = 32
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
        if bool(stor12.length) == 1:
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[idx + ceil32(return_data.size) + ceil32(s) + 160] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
            mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192] = 32
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
        _406 = mem[ceil32(return_data.size) + 96]
        mem[32 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[64] = _406 + 32
        mem[_406 + 32] = 32
        if ceil32(_406) <= _406:
            _642 = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_406 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_406 + 96 len ceil32(_642)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _406 + 96] = 0
            return 32, mem[_406 + 64 len ceil32(_642) + 32]
        _643 = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_406 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_406 + 96 len ceil32(_643)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_643)]
        if ceil32(_643) > _643:
            mem[_643 + _406 + 96] = 0
        return 32, mem[_406 + 64 len ceil32(_643) + 32]
    mem[ceil32(return_data.size) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = ext_call.return_data[0]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor12.length):
            mem[ceil32(return_data.size) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
            mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
            mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 32
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
        if bool(stor12.length) == 1:
            idx = 0
            t = 0
            while idx < uint255(stor12.length) * 0.5:
                mem[idx + ceil32(return_data.size) + ceil32(s) + 160] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
            mem[ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 32
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
                mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + (uint255(stor12.length) * 0.5) + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
        _402 = mem[ceil32(return_data.size) + 96]
        mem[32 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[64] = _402 + 32
        mem[_402 + 32] = 32
        if ceil32(_402) <= _402:
            _646 = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_402 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
            mem[_402 + 96 len ceil32(_646)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _402 + 96] = 0
            return 32, mem[_402 + 64 len ceil32(_646) + 32]
        _647 = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_402 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_402 + 96 len ceil32(_647)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _402 + 96] = 0
        return 32, mem[_402 + 64 len ceil32(_647) + 32]
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor12.length):
        mem[ceil32(return_data.size) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
        mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
        mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192] = 32
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
            mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
    if bool(stor12.length) == 1:
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[idx + ceil32(return_data.size) + ceil32(s) + 160] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
        mem[ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 192] = 32
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128]) > mem[ceil32(return_data.size) + ceil32(s) + 128]:
            mem[mem[ceil32(return_data.size) + ceil32(s) + 128] + mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return Array(len=mem[ceil32(return_data.size) + ceil32(s) + 128], data=mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(return_data.size) + ceil32(s) + 128])]), 
    _407 = mem[ceil32(return_data.size) + 96]
    mem[32 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    mem[64] = _407 + 32
    mem[_407 + 32] = 32
    if ceil32(_407) <= _407:
        _650 = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_407 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
        mem[_407 + 96 len ceil32(_650)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _407 + 96] = 0
        return 32, mem[_407 + 64 len ceil32(_650) + 32]
    _651 = mem[ceil32(return_data.size) + ceil32(s) + 128]
    mem[_407 + 64] = mem[ceil32(return_data.size) + ceil32(s) + 128]
    mem[_407 + 96 len ceil32(_651)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(_651)]
    if ceil32(_651) > _651:
        mem[_651 + _407 + 96] = 0
    return 32, mem[_407 + 64 len ceil32(_651) + 32]
}

function sub_1c3917b8(?) {
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'az: fuck off bud'
    staticcall sub_27e9887bAddress.nodePrice() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = zeusAddress
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call zeusAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args zeusAddress, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    staticcall sub_27e9887bAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 96] = 1
        mem[(4 * ceil32(return_data.size)) + 128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor12.length):
                mem[(4 * ceil32(return_data.size)) + 192] = Mask(248, 8, stor12.length)
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 192] = sub_f5de189e
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 225] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 229] = 32
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 261] = mem[(4 * ceil32(return_data.size)) + 160]
                mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                    mem[mem[(4 * ceil32(return_data.size)) + 160] + (4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293] = 0
                require ext_code.size(zeusAddress)
                call zeusAddress.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
            else:
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length) * 0.5:
                        mem[idx + (4 * ceil32(return_data.size)) + 192] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 192] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 225] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 229] = 32
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 261] = mem[(4 * ceil32(return_data.size)) + 160]
                    mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                        mem[mem[(4 * ceil32(return_data.size)) + 160] + (4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + (uint255(stor12.length) * 0.5) + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                else:
                    mem[0] = sub_f5de189e
                    mem[32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[64] = 33
                    mem[33] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[37] = 32
                    _133 = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160)]
                    mem[69] = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160)]
                    mem[101 len ceil32(_133)] = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160) + 32 len ceil32(_133)]
                    if ceil32(_133) > _133:
                        mem[_133 + 101] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.mem[32, mem[69 len 27] len 4] with:
                         gas gas_remaining wei
                        args mem[32, mem[69 len 27] + 4 len ceil32(_133) + -32, mem[69 len 27] + 97]
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor12.length):
                mem[(4 * ceil32(return_data.size)) + 192] = Mask(248, 8, stor12.length)
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 192] = sub_f5de189e
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 225] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 229] = 32
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 261] = mem[(4 * ceil32(return_data.size)) + 160]
                mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                    mem[mem[(4 * ceil32(return_data.size)) + 160] + (4 * ceil32(return_data.size)) + stor12.length.field_1 + 293] = 0
                require ext_code.size(zeusAddress)
                call zeusAddress.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
            else:
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[idx + (4 * ceil32(return_data.size)) + 192] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 192] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 225] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 229] = 32
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 261] = mem[(4 * ceil32(return_data.size)) + 160]
                    mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + 160]) > mem[(4 * ceil32(return_data.size)) + 160]:
                        mem[mem[(4 * ceil32(return_data.size)) + 160] + (4 * ceil32(return_data.size)) + stor12.length.field_1 + 293] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + 160], data=mem[(4 * ceil32(return_data.size)) + stor12.length.field_1 + 293 len ceil32(mem[(4 * ceil32(return_data.size)) + 160])])
                else:
                    mem[0] = sub_f5de189e
                    mem[32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[64] = 33
                    mem[33] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[37] = 32
                    _137 = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160)]
                    mem[69] = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160)]
                    mem[101 len ceil32(_137)] = mem[0, Mask(248, 0, (4 * ceil32(return_data.size)) + 160) + 32 len ceil32(_137)]
                    if ceil32(_137) > _137:
                        mem[_137 + 101] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.mem[32, mem[69 len 27] len 4] with:
                         gas gas_remaining wei
                        args mem[32, mem[69 len 27] + 4 len ceil32(_137) + -32, mem[69 len 27] + 97]
    else:
        s = 0
        idx = ext_call.return_data[0]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[(4 * ceil32(return_data.size)) + 96] = s
        if not s:
            t = s
            idx = ext_call.return_data[0]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[t + (4 * ceil32(return_data.size)) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor12.length):
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                    mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 196] = 32
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                        mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
                else:
                    if bool(stor12.length) != 1:
                        _409 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[32 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = _409 + 32
                        mem[_409 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[_409 + 36] = 32
                        if ceil32(_409) <= _409:
                            _649 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_409 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_409 + 100 len ceil32(_649)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_649)]
                            if ceil32(_649) > _649:
                                mem[_649 + _409 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_409 + 68 len ceil32(_649) + 32]
                        else:
                            _650 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_409 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_409 + 100 len ceil32(_650)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_650)]
                            if ceil32(_650) > _650:
                                mem[_650 + _409 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_409 + 68 len ceil32(_650) + 32]
                    else:
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < uint255(stor12.length) * 0.5:
                            mem[idx + (4 * ceil32(return_data.size)) + ceil32(s) + 160] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 196] = 32
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                        if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                            mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260] = 0
                        require ext_code.size(zeusAddress)
                        call zeusAddress.createNodeWithTokens(string arg1) with:
                             gas gas_remaining wei
                            args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
            else:
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor12.length):
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                    mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 196] = 32
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                        mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
                else:
                    if bool(stor12.length) != 1:
                        _417 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[32 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = _417 + 32
                        mem[_417 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[_417 + 36] = 32
                        if ceil32(_417) <= _417:
                            _653 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_417 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_417 + 100 len ceil32(_653)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_653)]
                            if ceil32(_653) > _653:
                                mem[_653 + _417 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_417 + 68 len ceil32(_653) + 32]
                        else:
                            _654 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_417 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_417 + 100 len ceil32(_654)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_654)]
                            if ceil32(_654) > _654:
                                mem[_654 + _417 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_417 + 68 len ceil32(_654) + 32]
                    else:
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[idx + (4 * ceil32(return_data.size)) + ceil32(s) + 160] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 196] = 32
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                        if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                            mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260] = 0
                        require ext_code.size(zeusAddress)
                        call zeusAddress.createNodeWithTokens(string arg1) with:
                             gas gas_remaining wei
                            args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
        else:
            mem[(4 * ceil32(return_data.size)) + 128 len s] = call.data[calldata.size len s]
            t = s
            idx = ext_call.return_data[0]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[t + (4 * ceil32(return_data.size)) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor12.length):
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                    mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 196] = 32
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                        mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
                else:
                    if bool(stor12.length) != 1:
                        _413 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[32 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = _413 + 32
                        mem[_413 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[_413 + 36] = 32
                        if ceil32(_413) <= _413:
                            _657 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_413 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_413 + 100 len ceil32(_657)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_657)]
                            if ceil32(_657) > _657:
                                mem[_657 + _413 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_413 + 68 len ceil32(_657) + 32]
                        else:
                            _658 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_413 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_413 + 100 len ceil32(_658)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_658)]
                            if ceil32(_658) > _658:
                                mem[_658 + _413 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_413 + 68 len ceil32(_658) + 32]
                    else:
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < uint255(stor12.length) * 0.5:
                            mem[idx + (4 * ceil32(return_data.size)) + ceil32(s) + 160] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 160] = sub_f5de189e
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 196] = 32
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                        if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                            mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260] = 0
                        require ext_code.size(zeusAddress)
                        call zeusAddress.createNodeWithTokens(string arg1) with:
                             gas gas_remaining wei
                            args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + (uint255(stor12.length) * 0.5) + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
            else:
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor12.length):
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160] = Mask(248, 8, stor12.length)
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
                    mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                    mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 196] = 32
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                    mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                        mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260] = 0
                    require ext_code.size(zeusAddress)
                    call zeusAddress.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
                else:
                    if bool(stor12.length) != 1:
                        _418 = mem[(4 * ceil32(return_data.size)) + 96]
                        mem[32 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = _418 + 32
                        mem[_418 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[_418 + 36] = 32
                        if ceil32(_418) <= _418:
                            _661 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_418 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_418 + 100 len ceil32(_661)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_661)]
                            if ceil32(_661) > _661:
                                mem[_661 + _418 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_418 + 68 len ceil32(_661) + 32]
                        else:
                            _662 = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_418 + 68] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                            mem[_418 + 100 len ceil32(_662)] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(_662)]
                            if ceil32(_662) > _662:
                                mem[_662 + _418 + 100] = 0
                            require ext_code.size(zeusAddress)
                            call zeusAddress.createNodeWithTokens(string arg1) with:
                                 gas gas_remaining wei
                                args 32, mem[_418 + 68 len ceil32(_662) + 32]
                    else:
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[idx + (4 * ceil32(return_data.size)) + ceil32(s) + 160] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 160] = sub_f5de189e
                        mem[(4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(mem[(4 * ceil32(return_data.size)) + 96])]
                        mem[64] = mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 192] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 196] = 32
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 228] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]
                        mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])] = mem[(4 * ceil32(return_data.size)) + ceil32(s) + 160 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])]
                        if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]) > mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128]:
                            mem[mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128] + mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260] = 0
                        require ext_code.size(zeusAddress)
                        call zeusAddress.createNodeWithTokens(string arg1) with:
                             gas gas_remaining wei
                            args Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128], data=mem[mem[(4 * ceil32(return_data.size)) + 96] + (4 * ceil32(return_data.size)) + ceil32(s) + stor12.length.field_1 + 260 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(s) + 128])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
