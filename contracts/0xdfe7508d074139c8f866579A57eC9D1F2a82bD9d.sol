contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xa0488f956d7fe05b1798e9faf0ce5f1133d23822)
    call 0xa0488f956d7fe05b1798e9faf0ce5f1133d23822.0x441a3e70 with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'recover: amount is 0'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'approveERC20: amount is 0'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function compoundLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132] = 0
    require ext_code.size(0xa0488f956d7fe05b1798e9faf0ce5f1133d23822)
    call 0xa0488f956d7fe05b1798e9faf0ce5f1133d23822.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(0xcc2f1d827b18321254223df4e84de399d9ff116c)
    staticcall 0xcc2f1d827b18321254223df4e84de399d9ff116c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] / 2
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 292
    while idx < stor1.length:
        mem[t] = stor1[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = 1698099753
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), 1698099753, stor1.length, mem[ceil32(return_data.size) + 292 len 32 * stor1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _30 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _31
    require _30 + (32 * _31) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _30 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _31:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = 1698099753
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0xcc2f1d827b18321254223df4e84de399d9ff116c, Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), 1698099753
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _49 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_49] == mem[_49]
    require mem[_49 + 32] == mem[_49 + 32]
    require mem[_49 + 64] == mem[_49 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254)
    staticcall 0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_55] == mem[_55]
    require ext_code.size(0xa0488f956d7fe05b1798e9faf0ce5f1133d23822)
    call 0xa0488f956d7fe05b1798e9faf0ce5f1133d23822.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0, mem[_55]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
