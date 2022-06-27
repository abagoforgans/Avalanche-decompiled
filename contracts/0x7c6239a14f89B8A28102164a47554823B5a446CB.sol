contract main {




// =====================  Runtime code  =====================


address owner;
address treasuryFundAddress;
address sub_cfa37c36Address;
address pegAddress;
address nativeAddress;
address usdcAddress;
address routerAddress;
array of struct sub_c791ab03;
array of struct sub_74c10bc2;
array of struct sub_cba8b48c;
array of struct sub_e4199366;
array of struct sub_aba579ff;
mapping of uint8 stor12;

function native() payable {
    return nativeAddress
}

function peg() payable {
    return pegAddress
}

function usdc() payable {
    return usdcAddress
}

function admins(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_74c10bc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_74c10bc2.length
    return sub_74c10bc2[arg1].field_0
}

function owner() payable {
    return owner
}

function sub_aba579ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aba579ff.length
    return sub_aba579ff[arg1].field_0
}

function sub_c791ab03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c791ab03.length
    return sub_c791ab03[arg1].field_0
}

function sub_cba8b48c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cba8b48c.length
    return sub_cba8b48c[arg1].field_0
}

function sub_cfa37c36(?) payable {
    return sub_cfa37c36Address
}

function treasuryFund() payable {
    return treasuryFundAddress
}

function sub_e4199366(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e4199366.length
    return sub_e4199366[arg1].field_0
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_76fed816(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function sub_059d910e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_cfa37c36Address)
    if not arg1:
        call sub_cfa37c36Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pegAddress)
        call pegAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        call nativeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 0
    else:
        call sub_cfa37c36Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pegAddress)
        call pegAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        call nativeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_154c9323(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[msg.sender]:
            revert with 0, 'Must be admin or owner'
    require ext_code.size(pegAddress)
    call pegAddress.0x23b872dd with:
         gas gas_remaining wei
        args treasuryFundAddress, this.address, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pegAddress)
    staticcall pegAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = treasuryFundAddress
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = sub_cba8b48c.length
    if not sub_cba8b48c.length:
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_cba8b48c.length
    else:
        mem[0] = 9
        mem[292] = address(sub_cba8b48c.field_0)
        idx = 292
        s = 0
        while (32 * sub_cba8b48c.length) + 292 > idx + 32:
            mem[idx + 32] = sub_cba8b48c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_cba8b48c.length, mem[292 len 32 * sub_cba8b48c.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}

function sub_61679ac1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[msg.sender]:
            revert with 0, 'Must be admin or owner'
    require ext_code.size(pegAddress)
    call pegAddress.0x23b872dd with:
         gas gas_remaining wei
        args treasuryFundAddress, this.address, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pegAddress)
    staticcall pegAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = treasuryFundAddress
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = sub_e4199366.length
    if not sub_e4199366.length:
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_e4199366.length
    else:
        mem[0] = 10
        mem[292] = address(sub_e4199366.field_0)
        if (32 * sub_e4199366.length) + 196 > 228:
            mem[324] = address(sub_e4199366.field_256)
            idx = 324
            s = 1
            while (32 * sub_e4199366.length) + 292 > idx + 32:
                mem[idx + 32] = sub_e4199366[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_e4199366.length, mem[292 len 32 * sub_e4199366.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}

function sub_f54a928c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[msg.sender]:
            revert with 0, 'Must be admin or owner'
    require ext_code.size(nativeAddress)
    call nativeAddress.0x23b872dd with:
         gas gas_remaining wei
        args treasuryFundAddress, this.address, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = treasuryFundAddress
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = sub_aba579ff.length
    if not sub_aba579ff.length:
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_aba579ff.length
    else:
        mem[0] = 11
        mem[292] = address(sub_aba579ff.field_0)
        if (32 * sub_aba579ff.length) + 196 > 228:
            mem[324] = address(sub_aba579ff.field_256)
            idx = 324
            s = 1
            while (32 * sub_aba579ff.length) + 292 > idx + 32:
                mem[idx + 32] = sub_aba579ff[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_aba579ff.length, mem[292 len 32 * sub_aba579ff.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}

function sub_1d52cceb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[msg.sender]:
            revert with 0, 'Must be admin or owner'
    require ext_code.size(sub_cfa37c36Address)
    call sub_cfa37c36Address.0x23b872dd with:
         gas gas_remaining wei
        args treasuryFundAddress, this.address, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cfa37c36Address)
    staticcall sub_cfa37c36Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = treasuryFundAddress
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = sub_74c10bc2.length
    if not sub_74c10bc2.length:
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_74c10bc2.length
    else:
        mem[0] = 8
        mem[292] = address(sub_74c10bc2.field_0)
        if (32 * sub_74c10bc2.length) + 196 > 228:
            mem[324] = address(sub_74c10bc2.field_256)
            idx = 324
            s = 1
            while (32 * sub_74c10bc2.length) + 292 > idx + 32:
                mem[idx + 32] = sub_74c10bc2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_74c10bc2.length, mem[292 len 32 * sub_74c10bc2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}

function sub_9d8c6352(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[msg.sender]:
            revert with 0, 'Must be admin or owner'
    require ext_code.size(sub_cfa37c36Address)
    call sub_cfa37c36Address.0x23b872dd with:
         gas gas_remaining wei
        args treasuryFundAddress, this.address, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cfa37c36Address)
    staticcall sub_cfa37c36Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = treasuryFundAddress
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = sub_c791ab03.length
    if not sub_c791ab03.length:
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_c791ab03.length
    else:
        mem[0] = 7
        mem[292] = address(sub_c791ab03.field_0)
        if (32 * sub_c791ab03.length) + 196 > 228:
            mem[324] = address(sub_c791ab03.field_256)
            idx = 324
            s = 1
            while (32 * sub_c791ab03.length) + 292 > idx + 32:
                mem[idx + 32] = sub_c791ab03[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, treasuryFundAddress, block.timestamp, sub_c791ab03.length, mem[292 len 32 * sub_c791ab03.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}



}
