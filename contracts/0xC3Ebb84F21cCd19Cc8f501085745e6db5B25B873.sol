contract main {




// =====================  Runtime code  =====================


const sub_5e31e3a1(?) = ext_call.return_data[0]

const sub_7e147bc9(?) = ext_call.return_data[0]


address sub_ecd30301Address;
uint256 sub_63894dc7;
array of address stor2;

function sub_63894dc7(?) {
    return sub_63894dc7
}

function sub_ecd30301(?) {
    return sub_ecd30301Address
}

function _fallback() payable {
    revert
}

function sub_64c978a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(sub_ecd30301Address, address(arg1));
    sub_ecd30301Address = address(arg1)
}

function sub_825e319d(?) {
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d3e860de(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_997ded8b(?) {
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_ecd30301Address with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_c6dd0dcf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_3a12580c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    staticcall 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    call 0x1337bedc9d22ecbe766df105c9623922a27963ec.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.claim_rewards(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_ecd30301Address with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_09f74d8b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not return_data.size:
        if ext_call.success:
        require mem[96] >= 68
        _8 = mem[100]
        require mem[100] >= 32
        require mem[132] <= test266151307()
        require mem[132] + 163 < mem[100] + 132
        _12 = mem[mem[132] + 132]
        if mem[mem[132] + 132] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[mem[132] + 132])) + 97 > test266151307() or ceil32(ceil32(mem[mem[132] + 132])) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(mem[mem[132] + 132])) + 97
        mem[96] = mem[mem[132] + 132]
        require mem[132] + mem[mem[132] + 132] + 164 <= _8 + 132
        mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
        if ceil32(_12) > _12:
            mem[_12 + 128] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[64] + mem[96] + 68] = 0
        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    require return_data.size >= 68
    _9 = Mask(224, 0, return_data.size), mem[128 len 4]
    require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
    _11 = mem[132]
    require mem[132] <= test266151307()
    require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
    _13 = mem[mem[132] + 132]
    if mem[mem[132] + 132] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98 > test266151307() or ceil32(ceil32(mem[mem[132] + 132])) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98
    mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
    require _11 + _13 + 68 <= _9 + 36
    mem[ceil32(return_data.size) + 129 len ceil32(_13)] = mem[_11 + 164 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[ceil32(return_data.size) + _13 + 129] = 0
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _13
    mem[mem[64] + 68 len ceil32(_13)] = mem[ceil32(return_data.size) + 129 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 68] = 0
    revert with 0, 32, _13, mem[mem[64] + 68 len ceil32(_13)]
}

function sub_207e2c53(?) {
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.claim_rewards(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = stor2.length
    mem[0] = 2
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 292
    while idx < stor2.length:
        mem[t] = stor2[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = -1
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), -1, stor2.length, mem[ceil32(return_data.size) + 292 len 32 * stor2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _34 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
    _35 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _34 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[64]
    mem[64] = mem[64] + 96
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_57] == mem[_57]
    mem[_54] = mem[_57]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_61] == mem[_61]
    mem[_54 + 32] = mem[_61]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == mem[_65]
    mem[_54 + 64] = mem[_65]
    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4 len 96] = mem[_54 len 96]
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 1
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.add_liquidity(uint256[3] rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == mem[_73]
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
         gas gas_remaining wei
        args mem[_73]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d628fac4(?) {
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg1:
        if arg2:
            if sub_ecd30301Address != msg.sender:
                revert with 0, 'Caller is not owner'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_ecd30301Address with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed.'
        else:
            if not arg3:
                if arg4:
                    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
                    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.add_liquidity(uint256[3] rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 512, 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[100] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = 0
                mem[ceil32(return_data.size) + 164] = 160
                mem[ceil32(return_data.size) + 260] = stor2.length
                mem[0] = 2
                idx = 0
                s = 0
                t = ceil32(return_data.size) + 292
                while idx < stor2.length:
                    mem[t] = stor2[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 196] = this.address
                mem[ceil32(return_data.size) + 228] = -1
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), -1, stor2.length, mem[ceil32(return_data.size) + 292 len 32 * stor2.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _149 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                require _149 + (32 * _153) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _149 + 128
                t = (2 * ceil32(return_data.size)) + 128
                while idx < _153:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _225 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_225] == mem[_225]
                        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[_225]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _213 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_223] == mem[_223]
                    mem[_213] = mem[_223]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_239] == mem[_239]
                    mem[_213 + 32] = mem[_239]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_247] == mem[_247]
                    mem[_213 + 64] = mem[_247]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_213 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
                    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.add_liquidity(uint256[3] rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_263] == mem[_263]
                        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[_263]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.claim_rewards(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2:
            if sub_ecd30301Address != msg.sender:
                revert with 0, 'Caller is not owner'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_ecd30301Address with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed.'
        else:
            if not arg3:
                if arg4:
                    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
                    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.add_liquidity(uint256[3] rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 512, 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg5:
                    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[100] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = 0
                mem[ceil32(return_data.size) + 164] = 160
                mem[ceil32(return_data.size) + 260] = stor2.length
                mem[0] = 2
                idx = 0
                s = 0
                t = ceil32(return_data.size) + 292
                while idx < stor2.length:
                    mem[t] = stor2[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 196] = this.address
                mem[ceil32(return_data.size) + 228] = -1
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), -1, stor2.length, mem[ceil32(return_data.size) + 292 len 32 * stor2.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _150 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                _154 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                require _150 + (32 * _154) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _150 + 128
                t = (2 * ceil32(return_data.size)) + 128
                while idx < _154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_226] == mem[_226]
                        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[_226]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _215 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_224] == mem[_224]
                    mem[_215] = mem[_224]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
                    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_240] == mem[_240]
                    mem[_215 + 32] = mem[_240]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    staticcall 0xc7198437980c041c805a1edcba50c1ce5db95118.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_248] == mem[_248]
                    mem[_215 + 64] = mem[_248]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_215 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
                    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.add_liquidity(uint256[3] rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
                        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_264] == mem[_264]
                        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
                        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[_264]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
