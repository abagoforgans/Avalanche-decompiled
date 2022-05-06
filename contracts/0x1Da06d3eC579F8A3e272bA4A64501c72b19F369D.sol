contract main {




// =====================  Runtime code  =====================


address routerAddress;
address sub_083911ebAddress;
address withdrawerAddress;
address owner;
address sub_405cf91dAddress;
address wavaxAddress;
address sub_c478ee21Address;
address lpAddress;
uint256 stor8; offset 1
uint256 inAmount;
uint256 sub_df25dba2;

function sub_083911eb(?) {
    return sub_083911ebAddress
}

function wavax() {
    return wavaxAddress
}

function lp() {
    return lpAddress
}

function sub_405cf91d(?) {
    return sub_405cf91dAddress
}

function owner() {
    return owner
}

function sub_c478ee21(?) {
    return sub_c478ee21Address
}

function inAmount() {
    return inAmount
}

function withdrawer() {
    return withdrawerAddress
}

function sub_df25dba2(?) {
    return sub_df25dba2
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    inAmount = arg1
    sub_df25dba2 = arg2
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap() {
    mem[96] = 2
    mem[128] = wavaxAddress
    mem[160] = sub_405cf91dAddress
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp
    call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor8 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _29 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _30 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = _29 + 224
    s = ceil32(return_data.size) + 224
    while idx < _29 + (32 * _30) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    staticcall sub_405cf91dAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    require mem[_52] == mem[_52]
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value stor8 wei
         gas gas_remaining wei
        args sub_405cf91dAddress, _53, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _56 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_56] == mem[_56]
    require mem[_56 + 32] == mem[_56 + 32]
    require mem[_56 + 64] == mem[_56 + 64]
    if inAmount and sub_df25dba2 > -1 / inAmount:
        revert with 'NH{q', 17
    require ext_code.size(sub_083911ebAddress)
    call sub_083911ebAddress.0xba560803 with:
         gas gas_remaining wei
        args (inAmount * sub_df25dba2 / 100000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(withdrawerAddress)
    call withdrawerAddress.withdrawETH(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= eth.balance(this.address):
        revert with 0, 'Balance going down'
}



}
